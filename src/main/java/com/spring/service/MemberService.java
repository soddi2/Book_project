package com.spring.service;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;

public interface MemberService {
	public boolean register(ClientVO vo);
	public boolean checkId(String userid);
	public LoginVO isLogin(LoginVO login);
	public boolean leave(LoginVO leave);
	public boolean modify(ClientVO modify);
	public String check_password(String userid);
	public boolean forgetPwd(LoginVO vo);
	public LoginVO forgetId(ClientVO vo);
}
