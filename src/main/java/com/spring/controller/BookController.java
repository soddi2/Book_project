package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shop/*")
public class BookController {
	
	@GetMapping("shop")
	public void rent() {
		log.info("shop 페이지 form");
	}
	
	@GetMapping("product_single")
	public void product_single() {
		log.info("상세 페이지 form");
	}
}
