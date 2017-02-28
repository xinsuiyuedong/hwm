package com.ssmdemo.service;

import java.util.List;

import com.ssmdemo.entity.Song;



public interface SongService {
	public List<Song> findBySong(String song);
	
	public void add(Song song);
	
	public void delete(Integer id);
	
	public List<Song> findAll();
}
