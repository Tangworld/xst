package com.xst.dao;

import com.xst.bean.ResourcesEntity;
import com.xst.bean.UserEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tsj on 16-3-25.
 * 负责所有与index.jsp页面相关的数据操作工作
 */
@Repository("mainDao")
public class MainDao extends BaseDao {
    public List<UserEntity> queryByName(String username){
        String hql = "from UserEntity as resources where resources.userName=?";
        Query query = query(hql);
        query.setString(0, username);
        List<UserEntity> users = query.list();
        return users;
    }
    public void saveUser(String username,String password,String email){

        UserEntity user = new UserEntity();
        user.setAuthority(0);
        user.setUserName(username);
        user.setPassword(password);
        user.setEmail(email);
        save(user);
    }
}
