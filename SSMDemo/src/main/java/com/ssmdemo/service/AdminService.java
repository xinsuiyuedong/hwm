package com.ssmdemo.service;

import java.util.List;

import com.ssmdemo.entity.Admin;

public interface AdminService {
    
	public void add(Admin admin);
	
	public void update(Admin admin);
	
	public void delete(String id);
	
	public Admin findByID(String id);
	
	public List<Admin> findAll();
}
