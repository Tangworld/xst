package com.xst.controller;

import com.xst.bean.ResourcesEntity;
import com.xst.dao.ResourcesDao;
import com.xst.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tsj on 16-3-23.
 */
//测试如何向jsp页面传值
@Controller
@RequestMapping("/test")
public class TestController {

        @Autowired
        private ResourcesDao resourcesDao;


        @RequestMapping(value = "/list" , method = RequestMethod.GET)
        public String ListPage(Model  model){

           // List<ResourcesEntity> list = new ArrayList<ResourcesEntity>();
            Page<ResourcesEntity> page;
            page = resourcesDao.PageQuery(2,5);
            model.addAttribute("page",page);
//            list = resourcesDao.List();
//            model.addAttribute("list", list);
//            System.out.println(list.get(1).getDays());
            return "v3.6admin/result";

        }

}
