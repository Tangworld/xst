//package com.xst.test.dao;
//
//import com.xst.bean.ResourcesEntity;
//import com.xst.dao.ResourcesDao;
//import org.junit.Assert;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.ContextHierarchy;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
//
//import java.util.List;
//
//
///**
// * Created by sl on 16-3-22.
// */
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@WebAppConfiguration(value = "src/main/webapp")
//@ContextHierarchy({
//        @ContextConfiguration(name = "parent", locations = "classpath:conf/spring.xml"),
//        @ContextConfiguration(name = "child", locations = "classpath:conf/springmvc.xml")
//})
//public class ResourcesDaoTest {
//
//    @Autowired
//    private ResourcesDao resourcesDao;
//
//    @Test
//    public void testGetById(){
////        List<ResourcesEntity> resources = resourcesDao.List();
//        ResourcesEntity resource = resourcesDao.getById(1001);
//
//        Assert.assertNotNull(resource);
//
//    }
//
//
//    @Test
//    public void testGetPageResources() {
//
//        List<ResourcesEntity> resources = resourcesDao.PageQuery(1,6)
//                .getList();
//        System.out.println("resources.size() = "+resources.size());
//        Assert.assertNotNull(resources);
//
//        for(ResourcesEntity res : resources){
//            System.out.println(res.getRid());
//            System.out.println(res.getName());
//        }
//    }
//
//}
