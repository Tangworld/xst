package com.xst.controller;

import com.xst.bean.WebEntity;
import com.xst.dao.AdminDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by tsj on 16-3-28.
 * 用于与后台有关的控制
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminDao adminDao;

    @RequestMapping(value = "/queryall" , method = RequestMethod.POST)
    public String queryAll(Model model){
        List<WebEntity> webs = adminDao.getAll();
        model.addAttribute("webs",webs);
        return "v3.6admin/admin/web-bug";
    }
    @RequestMapping(value = "/add" , method = RequestMethod.POST)
    public String add(Model model,@RequestParam String webname,@RequestParam String url){
        System.out.println(webname);
        System.out.println(url);
        if(webname.isEmpty()||url.isEmpty()){
            return "v3.6admin/admin/web-bug";
        }
        adminDao.add(webname,url);
        return "v3.6admin/admin/web-bug";
    }
    @RequestMapping(value = "/delete" , method = RequestMethod.POST)
    public String deleteweb(@RequestParam String deletename,@RequestParam String deleteurl){
        System.out.println(deletename);
        System.out.println(deleteurl);
        adminDao.deleteweb(deletename,deleteurl);
        return "v3.6admin/admin/web-bug";
    }
}
