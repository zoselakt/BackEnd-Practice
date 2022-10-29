package com.bluebiz.board;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluebiz.board.user.domain.UserDto;

@Controller("mainController")
public class MainController {
	
	@GetMapping("main")
	public String main(Model model, @ModelAttribute UserDto userDto) {
		return "main";
	}
	@ResponseBody
	@PostMapping("/logout")
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
