package com.spring.service;

import java.util.List;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;
import com.spring.domain.RentVO;

public interface BookService {
	public List<BookVO> booklist(Criteria cri);
	public int total(Criteria cri);
	public List<BookVO> booksearch(Criteria cri);
	public List<RentVO> rent(String userid);
	public BookVO getBook(int bno);
	public boolean insertCart(RentVO vo);
	public boolean deleteCart(RentVO rent);
}
