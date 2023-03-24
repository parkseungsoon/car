package com.jslhrd.carproject.domain.ad;

import lombok.Data;

@Data
public class AdDTO {
	private int idx;
	private String user_id;
	private String start_date;
	private String end_date;
	private String ad_gubun;
	private String ad_grade;
	private int ad_price;
	private String pass;
	private String subject;
	private String contents;
	private String photo;
	private int readcnt;
}
