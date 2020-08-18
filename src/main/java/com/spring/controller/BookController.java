package com.spring.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthVO;
import com.spring.domain.BookVO;
import com.spring.domain.ClientVO;
import com.spring.domain.Criteria;
import com.spring.domain.LoginVO;
import com.spring.domain.PageVO;
import com.spring.domain.RentVO;
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
	
	//서치 몰 버튼
	@PostMapping(value= {"more"})
	public String more(@ModelAttribute("cri") Criteria cri) {
		log.info("shop 페이지 form");
		
		List<BookVO> list = service.booklist(cri);		
		
		int total = service.total(cri);
		
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

	@PostMapping("loadmore") 
	 public ResponseEntity <List<BookVO>> loadmorebtn(Criteria cri,Model model){
		log.info("더보기 버튼");
		log.info(""+cri);

		cri.setAmount(cri.getAmount());
	    //cri.setKeyword(cri.getKeyword());
		
		cri.setPageNum(cri.getPageNum());
	    List<BookVO> list = service.booklist(cri);
	    
	    log.info(""+list);
	    
		  
		return new ResponseEntity<List<BookVO>>(list,HttpStatus.OK); 
	 }
	
	@GetMapping("product_single")
	public void product_single(int bno,Model model) {
		log.info(" 상세 페이지 form "+bno);
		model.addAttribute("bno",bno);
	}

	@GetMapping("shopping_list") 
	public String shopping_list_post(HttpSession session,Model model) {
		log.info("쇼핑리스트 form");
		
		LoginVO userId = (LoginVO) session.getAttribute("auth");

		try {
			if(userId.getUserid() != null) {
				List<RentVO> rentlist = service.rent(userId.getUserid());				
				model.addAttribute("rent",rentlist);
			}
			
		} catch (Exception e) {
			return "/register/register";
		}
		
		
		return "/shop/shopping_list";
	
	}
	
	@PostMapping("insertCart")
	public String insertCart(@ModelAttribute RentVO rent,HttpSession session) {
		log.info(" 대여 insert "  + rent);
		/* LoginVO userId = (LoginVO) session.getAttribute("auth"); */
		/* rent.setUserid(userId.getUserid()); */

		//대여리스트에 기존 상품이 있는지 검사

		if(service.insertCart(rent)) {
			
			
			
			return "redirect:/shop/shopping_list";
		}
			
		return "redirect:/";
	}
	
	
	  @PostMapping("return")
	  @ResponseBody 
	  public int bookCheck(@RequestParam(value = "book_check[]") List<String> chArr, RentVO rent,HttpSession session) throws Exception { 
		  log.info("반납");
		  
		  LoginVO userId = (LoginVO) session.getAttribute("auth");
		  
		  int result = 0;
		  int rno = 0;
		  
		  if(userId.getUserid() != null) {
			  rent.setUserid(userId.getUserid());
			  
			  for(String i : chArr) {   
			   rno = Integer.parseInt(i);
			   rent.setRno(rno);
			   
			  }   
			  result = 1;
			 }  
			 return result;  
		}
	 

	
	
	@GetMapping("shop")
	public void shop() {
		log.info("도서 페이지 구현");
	}

	
}




















