package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public boolean board_insert(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.board_insert(vo) > 0 ? true:false;
	}

}
