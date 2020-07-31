package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//중복아이디
	@GetMapping("/dupId")
	public ResponseEntity<String> duplicateId(String userid){
		
		log.info("중복아이디 검사 "+userid);
		
		if(service.checkId(userid)) {
			return new ResponseEntity<String>("fail",HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("success",HttpStatus.OK);
		}				
	}
	
	
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
		}else {
			return "/register/register";
		}
	}

	//회원 정보 수정
	@GetMapping("register_modify")
	public void modify() {
		log.info("register_modify form");
	}
	
	
	
} 


















