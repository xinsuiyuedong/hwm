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
import com.ssmdemo.entity.Admin;
import com.ssmdemo.entity.LogList;
import com.ssmdemo.service.AdminService;
import com.ssmdemo.service.LogListService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private LogListService logListService;
	@Autowired
	private AdminService adminService;
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
			//System.out.println("okokokokokokok");
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
		List<LogList> list = logListService.selectSong(inner);
		mv.addObject("list", list);
		mv.setViewName("personalfile");
		return mv;
	}
	
	@RequestMapping(value="/personalfiledeletesong")
	public ModelAndView personalFileDeleteSong(@RequestParam(value="livalue") String livalue){
		ModelAndView mv = new ModelAndView();
		logListService.delete(livalue);
		List<LogList> list = logListService.selectSong(inner);
		mv.addObject("list", list);
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
	
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminLogin(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@RequestMapping(value="/backstage", method=RequestMethod.POST)
	public ModelAndView backstage(@RequestParam(value="id") String id, @RequestParam(value="password") String password){
		String error="";
		Admin admin = adminService.findByID(id);
		ModelAndView mv = new ModelAndView();
		
		if(admin == null){
			error = "管理员不存在";
			mv.addObject("error", error);
			mv.setViewName("errorpage");
			return mv;
		}
		else{
			if(!admin.getPassword().equals(password)){
				error = "账号/密码错误";
				mv.addObject("error", error);
				mv.setViewName("errorpage");
				return mv;
			}
			else{
				mv.setViewName("backstage");
				return mv;
			}
		}
	}
	
	
	@RequestMapping(value="/mainpage")
	public ModelAndView mainPage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainpage");
		return mv;
	}
	
	@RequestMapping(value="/songmage")
	public ModelAndView songMage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("songmage");
		return mv;
	}
	
	@RequestMapping(value="/usermage")
	public ModelAndView userMage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("usermage");
		return mv;
	}
	
	@RequestMapping(value="/adminalluser")
	public ModelAndView adminAllUser(){
		List<User> re = userService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("re", re);
		mv.setViewName("usermage");
		return mv;
	}
	
	@RequestMapping(value="/admindeleteuser")
	public ModelAndView adminDeleteUser(@RequestParam(value="delete") String delete){
		userService.delete(delete);
		List<User> deus = userService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("re", deus);
		mv.setViewName("usermage");
		return mv;
	}
}
