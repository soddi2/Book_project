package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;
import com.spring.mapper.MemberMapper;
import com.spring.mapper.RegisterMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private RegisterMapper mapper;

	@Override
	public boolean register(ClientVO vo) {
		// TODO Auto-generated method stub
		return mapper.register(vo) > 0 ? true:false;
	}

	@Override
	public ClientVO login() {
		// TODO Auto-generated method stub
		return null;
	}
	


}
