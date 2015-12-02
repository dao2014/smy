package com.hmh.ibatis.web;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hmh.ibatis.redis.util.RedisDaoTool;
 
 
public class RedisTest {

	private RedisDaoTool redisDaoTool;
     
    @Before
    public void before(){                                                                   
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:spring.xml","classpath:spring-mybatis.xml"});
        redisDaoTool = (RedisDaoTool) context.getBean("redisDaoTool");
    }
     
    @Test
    public void addUser() {
        System.out.println(redisDaoTool.getString("15626204068"));
    }
    
}
