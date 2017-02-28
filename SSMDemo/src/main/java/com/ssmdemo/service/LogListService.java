package com.ssmdemo.service;


import java.util.List;

import com.ssmdemo.entity.LogList;

public interface LogListService {
	
	public void add(LogList logList);
	
	public void delete(String song);
	
	public List<LogList> selectSong(String user);
}
