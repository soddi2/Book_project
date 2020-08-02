package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	//페이지를 넘기지 않고 가만히 있을때는 ajax로 정보를 담아서 이동
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
	public String registerPost(@ModelAttribute("vo") ClientVO vo,LoginVO login,Model model,HttpSession session) {
		log.info("register 값 입력 받기 : " + vo);
		
		boolean register = service.register(vo);
		
		//로그인 확인 => 성공시 index.jsp / 실패시 로그인 페이지
		LoginVO auth = service.isLogin(login);
		if(register) {
			model.addAttribute("userid", vo.getUserid());
			model.addAttribute("password", vo.getPassword());
			model.addAttribute("address", vo.getAddress());
			model.addAttribute("email", vo.getEmail());
			
			return "redirect:/register/register";
		}else {
			return "/register/register";
		}
	}

	//로그인
	//로그인 처리
	@PostMapping("/login")
	public String loginPost(@ModelAttribute("login") LoginVO login,HttpSession session) {
		//login.jsp에서 넘긴 값 가져오기
		log.info(""+login);
		//로그인 확인 => 성공시 index.jsp / 실패시 로그인 페이지
		LoginVO auth = service.isLogin(login);
		
		if(auth!=null) {
			//세션에 값 담기
			session.setAttribute("auth", auth);
			return "redirect:/"; 
		}else {
			return "/register/register";			
		}			
	}

	
	//회원 정보 수정
	@GetMapping("register_modify")
	public void modify() {
		//log.info("register_modify form");
	}
	
} 


















