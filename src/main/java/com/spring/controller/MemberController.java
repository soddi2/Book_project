package com.spring.controller;

import javax.print.PrintException;
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
import com.spring.email.EmailSender;
import com.spring.email.EmailVO;
import com.spring.email.RandomString;
import com.spring.service.MemberService;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequestMapping("/register/*")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private EmailSender emailSender;
	
	@Autowired
	private EmailVO email;
	
	
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
		
		try {
			//로그인 확인 => 성공시 index.jsp / 실패시 로그인 페이지
			LoginVO auth = service.isLogin(login);
			if(register) {
				model.addAttribute("userid", vo.getUserid());
				model.addAttribute("password", vo.getPassword());
				model.addAttribute("address", vo.getAddress());
				model.addAttribute("email", vo.getEmail());
				model.addAttribute("mobile", vo.getMobile());
				
				return "/register/register";
			}else {
				return "/register/register";
			}
		} catch (Exception e) {
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
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("auth");
		
		return "redirect:/";
	}
	
	//회원 정보 수정
	@GetMapping("register_modify")
	public void modify_form() {
		log.info("register_modify form");
	}
	
	//비밀본호 확인
	//페이지를 넘기지 않고 가만히 있을때는 ajax로 정보를 담아서 이동
	@GetMapping("/dupPWD")
	public ResponseEntity<String> duplicatePWD(String currentPassword,HttpSession session){
		
		LoginVO vo = (LoginVO) session.getAttribute("auth");
		
		//현재 입력한 비밀번호 가져오기
		log.info("현재 비번 : "+currentPassword);
		log.info("아이디 : "+vo.getUserid());
		
		
		//db에 있는 진짜 비번 가져오기
		String curPwd = service.check_password(vo.getUserid());
		log.info("비밀번호 : "+curPwd);
		log.info("확인비밀번호 : "+currentPassword);
		
		//사용자가 입력한 비번이랑 일치하는지 확인
		if(curPwd.equals(currentPassword)) {			
			log.info("성공");
			return new ResponseEntity<String>("success",HttpStatus.OK);
		}else {
			log.info("실패");
			return new ResponseEntity<String>("fail",HttpStatus.OK);
		}				
	}
	
	//회원 정보 수정
	@PostMapping("/modify")
	public String modify(HttpSession session,LoginVO vo,ClientVO modify,RedirectAttributes rttr) {
		
		//session에 있는 값 가져오기
		vo = (LoginVO) session.getAttribute("auth");
		
		log.info(""+vo);
		log.info(""+modify);
		
		modify.setUserid(vo.getUserid());
		
		if(service.modify(modify)) {
			 session.removeAttribute("auth");
			 rttr.addFlashAttribute("info", "수정 성공");
				
			 return "redirect:/";
		}else {
			 rttr.addFlashAttribute("error", "내용을 다시 확인해 주세요");
			 return "/register/register_modify";
		}
	}

	
	//회원 탈퇴
	@PostMapping("/leave") //변화를 줄때 post
	public String leavePost(HttpSession session,LoginVO leave,RedirectAttributes rttr,String currentPassword) {
		
		log.info(""+leave);
		
		//auth = (AuthVO) session.getAttribute("auth");

		//DB에서 userid가 넘겨져 옴
		//userid와 일치하는 비밀번호 추출
		//select password where userid = leave.getUserid()
		
		String curPwd = service.check_password(leave.getUserid());
		
		if(curPwd.equals(currentPassword)) {
			//일치한다면 삭제작업 시작
			if(service.leave(leave)) {
				log.info(""+leave.toString());
				session.removeAttribute("auth");
				rttr.addFlashAttribute("info", "탈퇴 성공");
				//삭제가 성공하면 세션 해제 인덱스 페이지로 이동
				return "redirect:/";				
			}else { //DB에러시
				//삭제 실패시 leave 페이지 보여주기
				rttr.addFlashAttribute("error", "탈퇴 실패");
				return "/register/register_modify";
			}
		}
		rttr.addFlashAttribute("error", "탈퇴 실패");
		return "/register/register_modify";
	}
	
	 //비밀번호 찾기
	 @GetMapping("/register_findpwd")
	 public void findpwd() {
		 log.info("팝업 창");
	 }
	
	//비밀번호 찾기
	 @PostMapping("/forgetPwd")
	    public String sendEmailAction (ClientVO client, Model model) throws Exception {
	        log.info("E-mail 전송 서비스");
	        log.info(""+client);
	       
	        
	        //랜덤 문자열 reference
	        String ENGLISH_LOWER = "abcdefghijklmnopqrstuvwxyz";
	        String ENGLISH_UPPER = ENGLISH_LOWER.toUpperCase();
	        String NUMBER = "0123456789";
	        
	        //랜덤을 생성할 대상 문자열
	        String DATA_FOR_RANDOM_STRING = ENGLISH_LOWER + ENGLISH_UPPER + NUMBER;
	        
	        //랜덤 문자열 길이
	        int random_string_length=10;
	    	
	        RandomString randomStr = new RandomString();
	        String tempPwd=randomStr.generate(DATA_FOR_RANDOM_STRING, random_string_length);

	        LoginVO vo=service.forgetId(client);
	        log.info(""+vo);
	        
	        if(vo!=null) {
	        	if(client.getUserid().equals(vo.getUserid())) {
	        		vo.setPassword(tempPwd);
	        		service.forgetPwd(vo);
	        		System.out.println(service.forgetPwd(vo));
	        		email.setContent("비밀번호는 "+vo.getPassword()+" 입니다.");
	        		email.setReciver(vo.getEmail());
	        		email.setSubject(vo.getUserid()+"님 비밀번호 찾기 메일입니다.");
	        		emailSender.SendEmail(email);
	        		
	        		return "redirect:/";        	
	        	}else {
	        		return "/register/register_findpwd";
	        	}
	        }
	        return "/register/register_findpwd";
	    }
	 
}



















