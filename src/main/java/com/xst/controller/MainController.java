package com.xst.controller;

import com.xst.bean.ResourcesEntity;
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
 * Created by tsj on 16-3-25.
 * 用于与index.jsp相关的全部控制功能
 */
@Controller
@RequestMapping("/main")
public class MainController {

    @Autowired
    MainDao mainDao;

    @RequestMapping(value = "/login" , method = RequestMethod.POST)
    public String login(Model model,@RequestParam String username,@RequestParam String password){
        String accessPassword = new String();
        List<UserEntity> users= mainDao.queryByName(username);
        for(UserEntity user:users){
            accessPassword = user.getPassword();
        }
        if(accessPassword.equals(password)){
            model.addAttribute("user","欢迎您，"+username);

        }
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/regist" , method = RequestMethod.POST)
    public String regist(Model model,@RequestParam String registusername,@RequestParam String registpassword,@RequestParam String registemail){
        mainDao.saveUser(registusername, registpassword, registemail);
        model.addAttribute("user","欢迎您，"+registusername);
        return "v3.6admin/index";
    }

}
