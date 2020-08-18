package com.spring.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BookVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.domain.ReplyPageVO;
import com.spring.service.BookService;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequestMapping("/shop/*")
public class BookController {
	
	@Autowired
	private BookService service;
	
	
	@GetMapping(value= {"shopSearch"})
	public String rent(@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("shop 페이지 form");
		
		List<BookVO> list = service.booklist(cri);
		model.addAttribute("list", list);
		
		int total = service.total(cri);
		model.addAttribute("pageVO", new PageVO(cri,total));
		
		return "/shop/shopSearch";
	}
	
	@PostMapping("shopSearch")
	public String booksearch(@ModelAttribute("cri") Criteria cri,Model model,RedirectAttributes rttr) {
		log.info("메인 서치 컨트롤러");
		log.info(" 키워드 "+cri);
		
		/* cri.setKeyword("%"+cri.getKeyword()+"%"); */
		
		List<BookVO> search = service.booksearch(cri);
		log.info("리스트 사이즈 " + search.size());
		if(!search.isEmpty()) {
			model.addAttribute("list" , search);
			return "/shop/shopSearch";
		}else {
			rttr.addFlashAttribute("msg", "검색 결과 없음");
			rttr.addFlashAttribute("tab", search);
			return "redirect:/";
		}		
	}

	@PostMapping("shoplist") 
	 public ResponseEntity <List<BookVO>> loadmorebtn(Criteria cri,Model model){
		log.info("더보기 버튼");
		log.info(""+cri);
		System.out.println(cri);
		
		cri.setPageNum(cri.getPageNum());
	    cri.setAmount(cri.getAmount());
	    //cri.setKeyword(cri.getKeyword());
	    List<BookVO> list = service.booklist(cri);
	    
	    log.info(""+list);
	    
		  
		return new ResponseEntity<List<BookVO>>(list,HttpStatus.OK); 
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




















