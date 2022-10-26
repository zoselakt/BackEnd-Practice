package com.bluebiz.board.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bluebiz.board.mainBoard.domain.BoardDto;
import com.bluebiz.board.mainBoard.service.BoardService;
import com.bluebiz.board.user.domain.UserDto;
import com.bluebiz.board.user.service.UserService;

@Controller("userUpdateController")
public class UserUpdateController {
	private UserService userService;
	
	@Autowired
	public UserUpdateController(BoardService boardService) {
		this.userService = userService;
	}
	
	@GetMapping("user/updateUser")
	public String update(Model model, @ModelAttribute BoardDto boardDto) {
		model.addAttribute("boardDto", boardDto);
		return "board/updateUser";
	}
	
	@PostMapping("user/updateUser")
	public String updateUser(Model model, @ModelAttribute UserDto userDto) throws Exception {
		model.addAttribute("userDto", userDto);
		userService.update(userDto);
		return "redirect:main";
	}
}
