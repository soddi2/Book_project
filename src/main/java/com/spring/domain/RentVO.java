package com.spring.domain;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
//r.bno,r.userid,b.writer,b.publisher,b.bookname,rental_date, return_date
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RentVO {
	private int rno;
	private int bno;
	private String userid;
	private String writer;
	private String publisher;
	private String bookname;
	private Date rental_date;
	private Date return_date;
}
