package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;

public interface RegisterMapper {
	public int register(ClientVO vo);
	public int checkId(String userid);
	public LoginVO isLogin(LoginVO login);
	public int leave(LoginVO leave);
	public int modify(ClientVO modify);
	public String check_password(String userid);
	public int forgetPwd(LoginVO vo);
	public LoginVO forgetId(ClientVO vo);
}
