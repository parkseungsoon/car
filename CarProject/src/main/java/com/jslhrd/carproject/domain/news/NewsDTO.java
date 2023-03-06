package com.jslhrd.carproject.domain.news;

import lombok.Data;

@Data
public class NewsDTO {
	private int idx;
	private String admin_id;
	private String admin_name;
	private String pass;
	private String subject;
	private String contents;
	private String photo;
	private String regdate;
	private int readcnt;
}
