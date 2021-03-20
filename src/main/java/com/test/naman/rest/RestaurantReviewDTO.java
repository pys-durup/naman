package com.test.naman.rest;

import java.util.List;

import lombok.Data;

@Data
public class RestaurantReviewDTO {
	
	private String reviewseq;
	private String customerseq;
	private String name;
	private String email;
	private String score;
	private String content;
	private String writedate;
	private String contentid;
	private int count;
	//private String upphoto;
	private List<String> photo;

}
