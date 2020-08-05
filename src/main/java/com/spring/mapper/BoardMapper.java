package com.spring.mapper;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardMapper {
	public int board_insert(BoardVO vo);
	public List<BoardVO> list(Criteria cri);
	public int total(Criteria cri);
	public BoardVO read(int bno);
	public int modify(BoardVO modify);
	public int delete(int bno);
}
