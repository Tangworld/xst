package com.xst.controller;

import com.xst.bean.UserEntity;
import com.xst.dao.MainDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by tsj on 16-3-28.
 * 用于用户信息列表的操作
 */
@Controller
@RequestMapping("/user")
public class AdminUserController {

    @Autowired
    MainDao mainDao;

    @RequestMapping(value = "/queryall" , method = RequestMethod.POST)
    public String queryAll(Model model){
        List<UserEntity> users = mainDao.queryAll();
        model.addAttribute("users",users);
        return "v3.6admin/admin/users-change";
    }
    @RequestMapping(value = "/set" , method = RequestMethod.POST)
    public String setAuth(@RequestParam String setauth){
        System.out.println(setauth);
        mainDao.setAuth(setauth);
        return "v3.6admin/admin/users-change";
    }

}
