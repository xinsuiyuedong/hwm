package com.ssmdemo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssmdemo.entity.Song;

@Repository(value="songDao")
public interface SongDao {
	List<Song> findBySong(String song);
}
