package com.spring.domain;

import lombok.Data;

@Data
public class BookVO {
	private int bno;
	private String bookname;
	private String writer;
	private String publisher;
	private String issue_year;
	private int book_qnt;
	private int rent_qnt;
}
