package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;
import com.spring.domain.RentVO;
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

	@Override
	public List<RentVO> rent(String userid) {
		
		return mapper.rent(userid);
	}

	@Override
	public BookVO getBook(int bno) {
		return mapper.getBook(bno);
	}

	@Override
	public boolean insertCart(RentVO vo) {
		return mapper.insertCart(vo)>0?true:false;
	}

	@Override
	public boolean deleteCart(RentVO rent) {
		return mapper.deleteCart(rent) > 0 ? true:false;
	}
}
