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
	public boolean checkId(String userid) {
		// TODO Auto-generated method stub
		int count=mapper.checkId(userid);
		return count==1 ? true : false;
	}

	@Override
	public LoginVO isLogin(LoginVO login) {
		// TODO Auto-generated method stub
		return mapper.isLogin(login);
	}

	@Override
	public boolean leave(LoginVO leave) {
		// TODO Auto-generated method stub
		return mapper.leave(leave) > 0 ? true:false;
	}

	@Override
	public boolean modify(ClientVO modify) {
		// TODO Auto-generated method stub
		return mapper.modify(modify) > 0 ? true:false;
	}

	@Override
	public String check_password(String userid) {
		// 비밀 번호 확인
		return mapper.check_password(userid);
	}

	@Override
	public boolean forgetPwd(LoginVO vo) {
		// TODO Auto-generated method stub
		return mapper.forgetPwd(vo) > 0 ? true:false;
	}

	@Override
	public LoginVO forgetId(LoginVO vo) {
		// TODO Auto-generated method stub
		return mapper.forgetId(vo);
	}
	


}
