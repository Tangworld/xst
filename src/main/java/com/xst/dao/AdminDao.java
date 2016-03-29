package com.xst.dao;

import com.xst.bean.WebEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tsj on 16-3-28.
 */
@Repository("webDao")
public class AdminDao extends BaseDao{

    public List<WebEntity> getAll(){
        String hql = "from WebEntity as resources ";
        Query query = query(hql);
        List<WebEntity> webs = query.list();
        return webs;
    }
    public void add(String webname,String url){
        WebEntity web = new WebEntity();
        web.setWebname(webname);
        web.setUrl(url);
        save(web);
    }

    public void deleteweb(String deletename,String deleteurl){
        WebEntity web = new WebEntity();
        web.setWebname(deletename);
        web.setUrl(deleteurl);
        delete(web);
    }
}
