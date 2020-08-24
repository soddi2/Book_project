package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	/* @PreAuthorize("isAuthenticated()") */ 
	@GetMapping("QnAwrite")
	public void writer() {
		log.info("writse form");
	}
	
	/* @PreAuthorize("isAuthenticated()") */ 
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
	
	@GetMapping(value= {"QnAread","QnAmodify"})
	public void read(@ModelAttribute("cri") Criteria cri,int bno,Model model) {
		log.info("read form");
		log.info(""+cri);
		
		BoardVO read = service.read(bno);
		model.addAttribute("vo", read);
		//http://localhost:8080/board/read
		//http://localhost:8080/board/modify

	}
	
//	@GetMapping("QnAmodify")
//	public void modify() {
//		log.info("modify form");
//	}
	
	//내용 수정
	/* @PreAuthorize("principal.username == #vo.writer") */
	@PostMapping("QnAmodify")
	public String modifyPost(Criteria cri,BoardVO modify,RedirectAttributes rttr) {
		log.info(""+cri);
		log.info(""+modify);
		

		boolean modi = service.modify(modify);
		
		if(modi) {
			//flash : 딸라 어쩌구 저쩌구 파라미터 방식으로 넘겨야함
			//read를 파라미터로 넘겨서 밑에서도 파라미터로 넘어갈수 있게 그냥 어트리뷰트로 넘겨야함
 			rttr.addAttribute("bno", modify.getBno()); //flash는 세션에 담는 거기 때문에 그냥 어트리뷰트로 하면 url로 딸려보내진다  read?bno=3
 			rttr.addAttribute("pageNum",cri.getPageNum());
 			rttr.addAttribute("amount",cri.getAmount());
 			rttr.addAttribute("type",cri.getType());
 			rttr.addAttribute("keyword",cri.getKeyword());
			return "redirect:/board/QnAlist"; //?bno=+modify.getBno();
		}else {
			rttr.addAttribute("bno", modify.getBno());
			rttr.addAttribute("pageNum",cri.getPageNum());
			rttr.addAttribute("amount",cri.getAmount());
			rttr.addAttribute("type",cri.getType());
 			rttr.addAttribute("keyword",cri.getKeyword());
			return "redirect:/board/QnAmodify";
		}
	}
	
	//내용 삭제
	/* @PreAuthorize("principal.username == #writer") */
	@PostMapping("/QnAremove")
	public String delete(BoardVO vo,String writer,int bno,RedirectAttributes rttr,Criteria cri) {
		
		//현재 글번호에 해당하는 첨부파일 목록을 서버에서 삭제하기 위해서 bno에 해당하는 첨부파일 리스트 가져오기
		//List<AttachFileVO> attachList = service.attachList(bno);
		
		boolean del = service.delete(bno);		
		//deleteFiles(attachList);
		if(del) {
			rttr.addAttribute("pageNum",cri.getPageNum());
 			rttr.addAttribute("amount",cri.getAmount());
 			rttr.addAttribute("type",cri.getType());
 			rttr.addAttribute("keyword",cri.getKeyword());
 			rttr.addFlashAttribute("result", "success");
			return "redirect:/board/QnAlist";
		}
		
		rttr.addAttribute("bno", vo.getBno());
		return "/board/QnAmodify";
	}
	

	
	
}




















