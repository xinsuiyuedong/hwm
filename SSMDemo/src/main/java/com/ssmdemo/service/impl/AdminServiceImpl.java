package com.ssmdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmdemo.dao.AdminDao;
import com.ssmdemo.entity.Admin;
import com.ssmdemo.service.AdminService;

@Service(value="adminService")
@Transactional

public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	public void add(Admin admin) {
		adminDao.add(admin);
	}

	public void update(Admin admin) {
		adminDao.update(admin);
	}

	public void delete(String id) {
		adminDao.delete(id);
	}

	public Admin findByID(String id) {
		return adminDao.findByID(id);
	}

	public List<Admin> findAll() {
		return adminDao.findAll();
	}
	
}

