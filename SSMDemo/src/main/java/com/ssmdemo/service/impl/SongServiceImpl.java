package com.ssmdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmdemo.dao.SongDao;
import com.ssmdemo.entity.Song;
import com.ssmdemo.service.SongService;

@Service(value="songService")
@Transactional
public class SongServiceImpl implements SongService {

	@Autowired
	private SongDao songDao;
	
	public List<Song> findBySong(String song) {
		return songDao.findBySong(song);
	}

	
}
