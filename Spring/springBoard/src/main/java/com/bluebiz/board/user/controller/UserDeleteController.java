package com.bluebiz.board.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluebiz.board.user.domain.UserDto;
import com.bluebiz.board.user.service.UserService;

@Controller("userDeleteController")
public class UserDeleteController {
	private UserService userService;
	
	@Autowired
	public UserDeleteController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping("user/deleteUser")
	public void delete(Model model, @ModelAttribute UserDto userDto) {
		model.addAttribute("userDto", userDto);
	}
	
	@PostMapping("user/deleteUser")
	public void deleteUser(Model model, @ModelAttribute UserDto userDto, 
			@RequestParam Integer unum) throws Exception {
		model.addAttribute("userDto", userDto);
		userService.userDelete(unum);
	}
}
