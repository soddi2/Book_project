package com.spring.mapper;

import java.util.List;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;

public interface BookMapper {
	public List<BookVO> booklist(Criteria cri);
	public int total(Criteria cri);
	public List<BookVO> booksearch(Criteria cri);
}
