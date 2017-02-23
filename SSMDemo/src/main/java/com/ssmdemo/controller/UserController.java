package com.ssmdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssmdemo.entity.User;
import com.ssmdemo.service.UserService;
import com.ssmdemo.entity.LogList;
import com.ssmdemo.service.LogListService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private LogListService logListService;
	private String inner = "游客";
	
	@RequestMapping(value="/tosignup")
	public ModelAndView toSignup(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView signup(User user){
		String error = "";
		ModelAndView mv = new ModelAndView();
		User existent = userService.findByID(user.getId()); 
        if(existent != null){
			error = "用户已存在";
			mv.addObject("error", error);
			mv.setViewName("errorpage");
			return mv;
		}
		else{
			System.out.println("okokokokokokok");
			userService.add(user);
			//return "redirect:/index.jsp";
			mv.setViewName("successfulpage");
			return mv;
		}
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam(value="id") String id, @RequestParam(value="password") String password){
		String error="";
		User user = userService.findByID(id);
		ModelAndView mv = new ModelAndView();
		if(user == null){
			error = "用户不存在";
			mv.addObject("error", error);
			mv.setViewName("errorpage");
			return mv;
		}
		else{
			if(!user.getPassword().equals(password)){
				error = "账号/密码错误";
				mv.addObject("error", error);
				mv.setViewName("errorpage");
				return mv;
			}
			else{
				inner = user.getId();
				mv.setViewName("reindex");
				return mv;
			}
		}
	}
	
	@RequestMapping(value="/list")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("musiclist");
		return mv;
	}
	
	
	
	@RequestMapping(value="/detailedlist")
	public ModelAndView detailedList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("playerlist");
		return mv;
	}
	
	@RequestMapping(value="/personalfile")
	public ModelAndView personalFile(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", inner);
		mv.setViewName("personalfile");
		return mv;
	}
	
	@RequestMapping(value="/returntoreindex")
	public ModelAndView toReindex(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reindex");
		return mv;
	}
	
	@RequestMapping(value="/exit")
	public String exit(){
		return "redirect:/index.jsp";
	}
	
	@RequestMapping(value="/relist")
	public ModelAndView reList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("remusiclist");
		return mv;
	}
	
	@RequestMapping(value="/redetailedlist")
	public ModelAndView reDetailedList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("replayerlist");
		return mv;
	}
	
	@RequestMapping(value="/addlist")
	public ModelAndView addList(@RequestParam(value="song") String song){
		ModelAndView mv = new ModelAndView();
		LogList logList = new LogList();
		logList.setUser(inner);
		logList.setSong(song);
		logListService.add(logList);
		mv.setViewName("researchresult");
		return mv;
	}
	
	@RequestMapping(value="/addlistfrommusic")
	public ModelAndView addListFromMusic(@RequestParam(value="song") String song){
		ModelAndView mv = new ModelAndView();
		LogList logList = new LogList();
		logList.setUser(inner);
		logList.setSong(song);
		logListService.add(logList);
		mv.setViewName("replayerlist");
		return mv;
	}
	
	@RequestMapping(value="/deleteList")
	public ModelAndView deleteList(@RequestParam(value="song") String song){
		ModelAndView mv = new ModelAndView();
		logListService.delete(song);
		mv.setViewName("personalfile");
		return mv;
	}
}
