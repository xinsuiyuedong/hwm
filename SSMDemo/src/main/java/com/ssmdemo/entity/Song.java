package com.ssmdemo.entity;

public class Song {
	
	private Integer id;
	private String singer;
	private String song;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getSinger() {
		return singer;
	}
	
	public void setSinger(String singer) {
		this.singer = singer;
	}
	
	public String getSong(){
		return song;
	}
	
	public void setSong(String song){
		this.song = song;
	}
	
}