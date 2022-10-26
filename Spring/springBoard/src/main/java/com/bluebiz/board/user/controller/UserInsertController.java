package com.bluebiz.board.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bluebiz.board.user.domain.UserDto;
import com.bluebiz.board.user.service.UserService;

@Controller("userInsertController")
public class UserInsertController {
	private UserService userService;
	
	@Autowired
	public UserInsertController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping("user/insertUser")
	public String insert(Model model, @ModelAttribute UserDto userDto) {
		model.addAttribute("userDto", userDto);
		return "user/insertUser";
	}
	
	@PostMapping("user/insertUser")
	public String insertUser(Model model, @ModelAttribute UserDto userDto) throws Exception {
		model.addAttribute("userDto", userDto);
		userService.insert(userDto);
		return "redirect:main";
	}
}
