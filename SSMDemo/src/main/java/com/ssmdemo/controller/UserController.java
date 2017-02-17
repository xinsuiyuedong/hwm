package com.ssmdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssmdemo.entity.User;
import com.ssmdemo.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login")
	public ModelAndView login(){
		//List<User> userList = userService.findAll();
		ModelAndView mv = new ModelAndView();
		//mv.addObject("userList", userList);
		mv.setViewName("login");
		
		return mv;
	}
	
	@RequestMapping(value="/player")
	public ModelAndView player(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("player");
		return mv;
	}
}
