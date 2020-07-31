package com.spring.service;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;

public interface MemberService {
	public boolean register(ClientVO vo);
	public boolean checkId(String userid);
}
