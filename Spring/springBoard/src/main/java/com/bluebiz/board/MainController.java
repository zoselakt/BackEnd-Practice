package com.bluebiz.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bluebiz.board.user.domain.UserDto;
import com.bluebiz.board.user.service.UserService;

@Controller("mainController")
public class MainController {
	
	@GetMapping("main")
	public String main(Model model, @ModelAttribute UserDto userDto) {
		return "main";
	}
}
