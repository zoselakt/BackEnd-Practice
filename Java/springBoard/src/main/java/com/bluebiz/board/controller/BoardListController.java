package com.bluebiz.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluebiz.board.domain.BoardDto;
import com.bluebiz.board.service.BoardService;

@Controller("boardListController")
public class BoardListController {
	private BoardService boardService;
	
	@Autowired
	public BoardListController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@GetMapping("board/mainBoard")
	public String main(Model model, @ModelAttribute BoardDto boardDto) throws Exception {
		
		List<BoardDto> selectAll = boardService.selectAll();
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("selectAll", selectAll);
		
		return "board/mainBoard";
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
