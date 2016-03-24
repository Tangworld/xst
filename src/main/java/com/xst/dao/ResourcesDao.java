package com.xst.dao;


import com.xst.bean.ResourcesEntity;
import com.xst.page.Page;
import com.xst.page.PageHandler;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by sl on 16-3-22.
 */
@Repository("resourcesDao")
public class ResourcesDao extends BaseDao {

    @Autowired
    private PageHandler pageHandler; //= new PageHandler();
//    @Autowired

    public ResourcesEntity getById(int rid){
        return get(ResourcesEntity.class,rid);
    }

    public List<ResourcesEntity> List(){
        String hql = "from ResourcesEntity as resources";
        Query query = query(hql);
        List<ResourcesEntity> results = query.list();
        for(ResourcesEntity re:results){
            System.out.println(re.getName());
        }
        return results;
    }

        /**
     * 查询
     * @param colume
     * @param value
     * @return
     */
    private List<ResourcesEntity> HQuery(String colume , int value){
        String hql = "from V9Resources as resources where resources."+colume+"=?";
        Query query = query(hql);
        query.setString(0, String.valueOf(value));
        List<ResourcesEntity> results = query.list();
        return results;
    }


    public  Page<ResourcesEntity> PageQuery(int pageNum , int pageSize){
        String hql = "from ResourcesEntity as resources";

        Query query = query(hql);

        return pageHandler.getPage(pageNum,pageSize,
                ResourcesEntity.class,query);
    }

    public Page<ResourcesEntity> getByStartEndCity(int pageNum,int pageSize,String start,String end){
        String hql = "from ResourcesEntity as resources where startCity="+start+" and endCity="+end;
        Query query = query(hql);
        return pageHandler.getPage(pageNum,pageSize,
                ResourcesEntity.class,query);
    }

}
