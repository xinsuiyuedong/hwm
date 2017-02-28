package com.ssmdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmdemo.dao.LogListDao;
import com.ssmdemo.entity.LogList;
import com.ssmdemo.service.LogListService;

@Service(value="logListService")
@Transactional
public class LogListServiceImpl implements LogListService {

	@Autowired
	private LogListDao logListDao;
	
	public void add(LogList logList) {
		logListDao.add(logList);
	}

	public void delete(String song) {
		logListDao.delete(song);
	}
	
	public List<LogList> selectSong(String user){
		return logListDao.selectSong(user);
	}
}
