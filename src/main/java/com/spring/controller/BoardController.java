package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
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
	public String boardlist(@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("list Form");
		
		//현재 페이지에 보여줄 게시물
		List<BoardVO> list = service.list(cri);
		model.addAttribute("list", list);
		
		//페이지 하단의 페이지 나누기와 관련된 정보들
		int total = service.total(cri);
		model.addAttribute("pageVO", new PageVO(cri,total));
		
		return "/board/QnAlist";
	}
	
	@GetMapping("QnAlist2")
	public void list() {
		
	}
	
	@GetMapping("QnAwrite")
	public void writer() {
		log.info("writse form");
	}

	@PostMapping("QnAwrite")
	public String writePost(BoardVO vo) {
		log.info(""+vo);
		
		try {
			if(service.board_insert(vo)) {
				return "redirect:/board/QnAlist";
			}
			
			return "/board/QnAwrite";	
		} catch (Exception e) {
			return "board/QnAwrite";
		}
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




















