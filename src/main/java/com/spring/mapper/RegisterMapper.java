package com.spring.mapper;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;

public interface RegisterMapper {
	public int register(ClientVO vo);
	public int checkId(String userid);
	public LoginVO isLogin(LoginVO login);
	
}
