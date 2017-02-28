package com.ssmdemo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssmdemo.entity.Admin;

@Repository(value="adminDao")
public interface AdminDao {
	
	void add(Admin admin);
	
	void update(Admin admin);
	
	void delete(String id);
	
	Admin findByID(String id);
	
	List<Admin> findAll();
}