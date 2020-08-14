package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;
import com.spring.mapper.BookMapper;

@Service
public class BookServiceImple implements BookService {

	@Autowired
	private BookMapper mapper;

	@Override
	public List<BookVO> booklist(Criteria cri) {
		return mapper.booklist(cri);
	}

	@Override
	public int total(Criteria cri) {
		return mapper.total(cri);
	}

	@Override
	public List<BookVO> booksearch(Criteria cri) {
		return mapper.booksearch(cri);
	}
}
