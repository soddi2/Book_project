package com.spring.mapper;

import com.spring.domain.ClientVO;

public interface RegisterMapper {
	public int register(ClientVO vo);
	public int checkId(String userid);
	
}
