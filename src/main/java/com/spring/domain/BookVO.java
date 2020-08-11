package com.spring.domain;

import lombok.Data;

@Data
public class BookVO {
	private int 번호;
	private String 도서명;
	private String 저자;
	private String 출판사;
	private String 발행년도;
	private int 도서권수;
	private int 대출권수;
}
