package com.spring.service;

import java.util.List;

import com.spring.domain.AttachFileVO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardService {
	public boolean board_insert(BoardVO vo);
	public List<BoardVO> list(Criteria cri);
	public int total(Criteria cri);
	public BoardVO read(int bno);
	public boolean modify(BoardVO modify);
	public boolean delete(int bno);
	public int updateReply(int bno,int amount);
}
