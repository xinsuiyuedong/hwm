package com.ssmdemo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssmdemo.entity.User;

@Repository(value="userDao")
public interface UserDao {
	
	void add(User user);
	
	void update(User user);
	
	void delete(Integer id);
	
	User findByID(Integer id);
	
	List<User> findAll();
}
