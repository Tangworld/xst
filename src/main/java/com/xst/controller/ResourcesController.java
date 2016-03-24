package com.xst.controller;

import com.xst.bean.ResourcesEntity;
import com.xst.dao.ResourcesDao;
import com.xst.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by sl on 16-3-22.
 */
@Controller
@RequestMapping("/resources")
public class ResourcesController {

    private static final int pageSize = 5;
    @Autowired
    private ResourcesDao resourcesDao;

//    @ResponseBody
//    @RequestMapping(value = "/list" , method = RequestMethod.GET)
//    public List<ResourcesEntity> List(){
//
//        return resourcesDao.List();
//
//    }
    @RequestMapping(value = "/list" , method = RequestMethod.GET)
    public String ListPage(Model model,@RequestParam int page){


        // List<ResourcesEntity> list = new ArrayList<ResourcesEntity>();

        List<ResourcesEntity> list =  resourcesDao.PageQuery(page,pageSize).getList();
        model.addAttribute("list",list);
       // model.addAttribute("page",page);
//            list = resourcesDao.List();
//            model.addAttribute("list", list);
//            System.out.println(list.get(1).getDays());
        for(ResourcesEntity re:list){
            System.out.println(re.getName());
        }

        return "v3.6admin/result";

    }

    @RequestMapping(value = "/query" , method = RequestMethod.GET)
    public String QueryByStartEnd(Model model,@RequestParam String start,
                                  @RequestParam String end, @RequestParam int page){


        // List<ResourcesEntity> list = new ArrayList<ResourcesEntity>();

        List<ResourcesEntity> list =  resourcesDao.getByStartEndCity(page,pageSize,start,end).getList();
        model.addAttribute("list",list);
        // model.addAttribute("page",page);
//            list = resourcesDao.List();
//            model.addAttribute("list", list);
//            System.out.println(list.get(1).getDays());
        for(ResourcesEntity re:list){
            System.out.println(re.getName());
        }

        return "v3.6admin/result";

    }

}
