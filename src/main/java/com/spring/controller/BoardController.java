package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
public class BoardController {

	@GetMapping("QnAlist")
	public void board() {
		log.info("list Form");
	}
	
	@GetMapping("QnAwrite")
	public void writer() {
		log.info("write form");
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




















