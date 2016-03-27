package com.xst.controller;

import com.xst.bean.ResourcesEntity;
import com.xst.bean.UserEntity;
import com.xst.dao.MainDao;
import com.xst.dao.ResourcesDao;
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
    private MainDao mainDao;

    @Autowired
    private ResourcesDao resourcesDao;

    @RequestMapping(value = "/login" , method = RequestMethod.POST)
    public String login(Model model,@RequestParam String username,@RequestParam String password){
        String accessPassword = new String();
        List<UserEntity> users= mainDao.queryByName(username);
        for(UserEntity user:users){
            accessPassword = user.getPassword();
            if(user.getAuthority()==1){
                return "v3.6admin/admin/index";
            }
        }
        if(accessPassword.equals(password)){
            model.addAttribute("user",username);

            model.addAttribute("abc","用户中心");
        }
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/regist" , method = RequestMethod.POST)
    public String regist(Model model,@RequestParam String registusername,@RequestParam String registpassword,@RequestParam String registemail){
        mainDao.saveUser(registusername, registpassword, registemail);
        System.out.println(registusername);
        model.addAttribute("user",registusername);
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public String search(Model model,@RequestParam String endcity){
        System.out.println(endcity);
        List<ResourcesEntity> list =  resourcesDao.getByStartEndCity(1,5,"南京",endcity).getList();
        model.addAttribute("list",list);
        model.addAttribute("startcity","南京");
        model.addAttribute("endcity",endcity);
        return "v3.6admin/result";
    }

}
