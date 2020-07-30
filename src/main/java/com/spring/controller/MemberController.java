package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.AuthVO;
import com.spring.domain.ClientVO;
import com.spring.domain.LoginVO;
import com.spring.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/register/*")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	// 회원가입
	@GetMapping("/register")
	public void register() {
		log.info("register form 보여주기");
	}
	
	@PostMapping("/register")
	public String registerPost(ClientVO vo) {
		log.info("register 페이지 보여주기" + vo);
		
		boolean register = service.register(vo);
		
		if(register) {
			return "redirect:/register/register";
		}
		
		return "/register/register";		
	}
	
	
//	@PostMapping("/login")
//	public String loginPost(LoginVO login, HttpSession session) {
//		log.info("로그인 요청" + login);
//		//AuthVO auth = service2
//		if(auth != null) {
//			session.setAttribute("auth", auth);
//			return "redirect:/";
//		} else {
//			return "/";
//		}
//	}
//	
} 


















