package com.hmh.ibatis.cotroller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hmh.ibatis.model.User;
import com.hmh.ibatis.service.IUserService;
import com.hmh.ibatis.util.ErrorMessageInfo;

@Controller
@RequestMapping("/user")
public class UserController {

	private static Logger logger = Logger.getLogger(UserController.class);
	
	@Resource
	private IUserService userService;
	 
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("users", userService.selectUsers());
		return "user/list";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		if(userService.deleteUser(id) == 1) {
			logger.debug("删除用户"+id+"成功");
		} else {
			logger.debug("删除用户"+id+"失败");
		}
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String update(@PathVariable int id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		return "user/edit";
 	}
	
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	public String update(@Validated User user, BindingResult br) {
		if(br.hasErrors()) {
			logger.error(ErrorMessageInfo.printErrorMessage(br));
			return "user/edit";
		}
		userService.updateUser(user);
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add() {
		return "user/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Validated User user, BindingResult br) {
		if(br.hasErrors()) {
			logger.error(ErrorMessageInfo.printErrorMessage(br));
			return "user/add";
		}
		userService.addTableUser(user);
		userService.addUser(user);
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/get/{userId}", method=RequestMethod.GET)
	public String get(@PathVariable String userId, Model model) {
		model.addAttribute("user", userService.getTableUser(userId));
		return "user/get";
	}
	
}
