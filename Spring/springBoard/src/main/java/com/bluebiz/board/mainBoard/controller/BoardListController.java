package com.bluebiz.board.mainBoard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluebiz.board.mainBoard.domain.BoardDto;
import com.bluebiz.board.mainBoard.service.BoardService;

@Controller("boardListController")
public class BoardListController {
	private BoardService boardService;
	
	@Autowired
	public BoardListController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
	@GetMapping("board/mainBoard")
	public String main(Model model, @ModelAttribute BoardDto boardDto
			, HttpServletResponse response, HttpServletRequest request) throws Exception {
		List<BoardDto> selectAll = boardService.selectAll();
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("selectAll", selectAll);
		
		return "board/mainBoard";
	}
	
	private boolean loginCheck(HttpServletRequest request) {
		// 1. 세션을 얻어서
		HttpSession session = request.getSession();
		// 2. 세션에 id가 있는지 확인, 있으면 true를 반환
		return session.getAttribute("id")!=null;
	}
	
	@GetMapping("board/detailBoard")
	public String detail(Model model, @ModelAttribute BoardDto boardDto, 
			@RequestParam int bnum) throws Exception {
		
		List<BoardDto> selectOne = boardService.selectOne(bnum); 
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("selectOne", selectOne);
		return "board/detailBoard";
	}
}
