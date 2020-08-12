package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shop/*")
public class BookController {
	
	@Autowired
	private BookService service;
	
	@GetMapping("shopSearch")
	public String rent(@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("shop 페이지 form");
		
		List<BookVO> list = service.booklist(cri);
		model.addAttribute("list", list);
		
		int total = service.total(cri);
		model.addAttribute("pageVO", new PageVO(cri,total));
		
		return "/shop/shopSearch";
	}
	
	@GetMapping("product_single")
	public void product_single() {
		log.info("상세 페이지 form");
	}
	
	@GetMapping("shopping_list")
	public void shopping_list() {
		log.info("쇼핑리스트 form");
	}
	
	@GetMapping("shop")
	public void shop() {
		log.info("도서 페이지 구현");
	}
	
}
