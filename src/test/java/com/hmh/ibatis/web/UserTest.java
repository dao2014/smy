package com.hmh.ibatis.web;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hmh.ibatis.model.User;
import com.hmh.ibatis.service.UserService;
 
public class UserTest {

	private UserService userService;
     
    @Before
    public void before() {                                                            
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:spring.xml","classpath:spring-mybatis.xml"});
        userService = (UserService) context.getBean("userService");
    }
     
    @Test
    public void addUser() {
        User user = new User();
        user.setNickname("你好");
        user.setState(2);
        System.out.println(userService.addUser(user));
    }
    
    @Test
    public void selectUsers() {
    	List<User> userList = userService.selectUsers();
    	for (User user : userList) {
			System.out.println(user.getId()+"--"+user.getState()+"--"+user.getNickname());
		}
    }
}
