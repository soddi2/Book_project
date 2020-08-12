package com.spring.service;

import java.util.List;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;

public interface BookService {
	public List<BookVO> booklist(Criteria cri);
	public int total(Criteria cri);
}
