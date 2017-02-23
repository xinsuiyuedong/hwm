package com.ssmdemo.dao;


import org.springframework.stereotype.Repository;

import com.ssmdemo.entity.LogList;

@Repository(value="logListDao")
public interface LogListDao {
	
	void add(LogList logList);
	
	void delete(String song);
}
