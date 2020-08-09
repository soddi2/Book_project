package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public boolean board_insert(BoardVO vo) {
		return mapper.board_insert(vo) > 0 ? true:false;
	}
	
	@Override
	public int total(Criteria cri) {
		return mapper.total(cri);
	}

	@Override
	public List<BoardVO> list(Criteria cri) {
		return mapper.list(cri);
	}

	@Override
	public BoardVO read(int bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO modify) {
		return mapper.modify(modify) > 0 ? true:false;
	}

	@Override
	public boolean delete(int bno) {
		return mapper.delete(bno) > 0 ? true:false;
	}
	
	@Override
	public int updateReply(int bno, int amount) {
		return mapper.updateReplyCnt(bno, amount);
	}


}
