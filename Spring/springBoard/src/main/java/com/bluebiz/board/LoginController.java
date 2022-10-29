package com.bluebiz.board;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluebiz.board.user.dao.UserDao;
import com.bluebiz.board.user.domain.UserDto;
import com.bluebiz.board.user.service.UserServiceImpl;

@Controller("loginController")
public class LoginController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private UserDao userDao;
	
	@GetMapping("login")
	public String main(Model model, @ModelAttribute UserDto userDto) {
		model.addAttribute("userDto", userDto);
		return "login";
	}
	
	@ResponseBody
	@PostMapping("login")
	public String login(Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");
		
//        // 1. id와 pwd를 확인
//        if(!loginCheck(user_id, user_password)) {
//            // 2-1   일치하지 않으면, loginForm으로 이동
//            String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "utf-8");
//
//            return "redirect:/login?msg="+msg;
//        }
		
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("user_id", user_id);
		map.put("user_password", user_password);
		List<UserDto> userDto = userServiceImpl.login(map);
		System.out.println(user_id + "아이디");
		System.out.println(user_password + "비밀번호");
		
		model.addAttribute("userDto", userDto);
		System.out.println(userDto + "로그인값");
		
		//일치하는 회원 정보가 있다면 회원 정보를 세션에 담는다
		session.setAttribute("userDto", userDto);
		session.setAttribute("user_id", user_id);
		session.setAttribute("user_password", user_password);
		
		return userDto == null ? "false" : "true";
	}
	
//	 private boolean loginCheck(String user_id, String user_password) {
//	        UserDto userDto = null;
//
//	        return userDto!=null && userDto.getUser_password().equals(user_password);
//	    }
}
