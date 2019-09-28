package com.a528854.shop.test;

import com.a528854.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.IOException;
import java.util.*;

public class Test {
    @Autowired
    ProductService service;
    @Autowired
    JdbcTemplate template;



    @org.junit.Test
    public void test() throws IOException {
//        Properties pro = new Properties();
//        URL url = getClass().getClassLoader().getResource("paycache.properties");
//
//        FileInputStream in = new FileInputStream(url.getPath());
//        pro.load(in);
//        Iterator<String> it=pro.stringPropertyNames().iterator();
//        while(it.hasNext()){
//            String key=it.next();
//            System.out.println(key+":"+pro.getProperty(key));

        Set set = new HashSet();
        set.add("list");
        set.add("list");
        set.add("766");
        for (Object str: set) {
            System.out.println(str.toString());
        }


    }
}
