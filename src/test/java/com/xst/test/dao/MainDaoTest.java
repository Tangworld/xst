//package com.xst.test.dao;
//
//import com.xst.bean.UserEntity;
//import com.xst.dao.MainDao;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.ContextHierarchy;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
//
///**
// * Created by tsj on 16-3-25.
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration(value = "src/main/webapp")
//@ContextHierarchy({
//        @ContextConfiguration(name = "parent", locations = "classpath:conf/spring.xml"),
//        @ContextConfiguration(name = "child", locations = "classpath:conf/springmvc.xml")
//})
//public class MainDaoTest {
//    @Autowired
//    private MainDao mainDao;
//
//
//    @Test
//    public void testMain(){
//        mainDao.saveUser("zhangsan","123456","123@qq.com");
//       // UserEntity user = mainDao.getUserById(5);
//    }
//
//}
