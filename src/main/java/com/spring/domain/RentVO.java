package com.spring.domain;



import java.sql.Date;

import lombok.Data;
//r.bno,r.userid,b.writer,b.publisher,b.bookname,rental_date, return_date
@Data
public class RentVO {
	private int bno;
	private String userid;
	private String writer;
	private String publisher;
	private String bookname;
	private Date rental_date;
	private Date return_date;
}
