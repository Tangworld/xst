package com.xst.controller;

import com.xst.bean.ResourcesEntity;
import com.xst.bean.UserEntity;
import com.xst.dao.MainDao;
import com.xst.dao.ResourcesDao;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
    public String login(HttpServletRequest request,HttpServletResponse response,@RequestParam String username,@RequestParam String password){
        String accessPassword = new String();
        HttpSession session = request.getSession();
        List<UserEntity> users= mainDao.queryByName(username);
        for(UserEntity user:users){
            accessPassword = user.getPassword();
            if(user.getAuthority()==1){
                session.setAttribute("user",user.getUserName());
//                model.addAttribute("user",user.getUserName());
//                httpsession.setAttribute("user",user.getUserName());
                return "v3.6admin/admin/index";
            }
        }
        if(accessPassword.equals(password)){
            session.setAttribute("user",username);
//            model.addAttribute("user",username);
            session.setAttribute("abc","用户中心");
//            model.addAttribute("abc","用户中心");
        }
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/regist" , method = RequestMethod.POST)
    public String regist(HttpServletRequest request,HttpServletResponse response,@RequestParam String registusername,@RequestParam String registpassword,@RequestParam String registemail){
        HttpSession session = request.getSession();
        mainDao.saveUser(registusername, registpassword, registemail);
        System.out.println(registusername);
        session.setAttribute("user",registusername);
        session.setAttribute("abc","用户中心");
//        model.addAttribute("user",registusername);
//        model.addAttribute("abc","用户中心");
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public ModelAndView search(HttpServletRequest request,HttpServletResponse response,@RequestParam String endcity){
        HttpSession session = request.getSession();
        System.out.println(endcity);
        List<ResourcesEntity> list =  resourcesDao.getByStartEndCity(1,5,"南京",endcity).getList();
        session.setAttribute("list",list);
        session.setAttribute("startcity","南京");
        session.setAttribute("endcity",endcity);
//        model.addAttribute("list",list);
//        model.addAttribute("startcity","南京");
//        model.addAttribute("endcity",endcity);
        return new ModelAndView("redirect:/views/v3.6admin/result.jsp");
//        return "v3.6admin/result";
    }

    @RequestMapping(value = "/dispath" , method = RequestMethod.GET)
    public String dispath(){
        return "v3.6admin/user/user-info";
    }

    @RequestMapping(value = "/home" , method = RequestMethod.GET)
    public String home(){
        return "v3.6admin/index";
    }

    @RequestMapping(value = "/logout" , method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "v3.6admin/index";
    }

}
