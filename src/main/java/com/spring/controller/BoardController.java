package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.BoardVO;
import com.spring.service.BoardService;
import com.spring.service.BoardServiceImpl;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@GetMapping("QnAlist")
	public void board() {
		log.info("list Form");
	}
	
	
	@GetMapping("QnAwrite")
	public void writer() {
		log.info("writse form");
	}

	@PostMapping("QnAwrite")
	public String writePost(BoardVO vo) {
		log.info(""+vo);
		
		if(service.board_insert(vo)) {
			return "redirect:/board/QnAlist";
		}
		
		return "/board/QnAwrite";
	}
	
	@GetMapping("QnAread")
	public void read() {
		log.info("read form");
	}
	
	@GetMapping("QnAmodify")
	public void modify() {
		log.info("modify form");
	}
	
	
}




















