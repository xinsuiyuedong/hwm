package com.ssmdemo.service;

import java.util.List;

import com.ssmdemo.entity.User;

public interface UserService {
    
	public void add(User user);
	
	public void update(User user);
	
	public void delete(String id);
	
	public User findByID(String id);
	
	public List<User> findAll();
}
