package com.hmh.ibatis.web;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hmh.ibatis.model.User;
import com.hmh.ibatis.service.UserService;

public class TestDbSource {
	
	private UserService userService;
	
	@Before
    public void before(){                                                                   
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:spring.xml"
                ,"classpath:spring-mybatis.xml"});
        userService = (UserService) context.getBean("userService");
    }
	
	@Test
	public void testDb() {
		User user = new User();
        user.setNickname("你好1111");
        user.setState(2);
        System.out.println(userService.addUser(user));
	}
}
