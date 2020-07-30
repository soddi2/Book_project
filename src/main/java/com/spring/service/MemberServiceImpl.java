package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.domain.AuthVO;
import com.spring.domain.LoginVO;
import com.spring.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public AuthVO login(LoginVO login) {
		return mapper.login(login);
	}

}
