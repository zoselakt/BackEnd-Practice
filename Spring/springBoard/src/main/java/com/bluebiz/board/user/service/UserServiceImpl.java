package com.bluebiz.board.user.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluebiz.board.user.dao.UserDao;
import com.bluebiz.board.user.domain.UserDto;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public int userInsert(UserDto userDto) throws Exception {
		return userDao.userInsert(userDto);
	}

	@Override
	public int userUpdate(UserDto userDto) throws Exception {
		return userDao.userUpdate(userDto);
	}

	@Override
	public int userDelete(Integer unum) throws Exception {
		return userDao.userDelete(unum);
	}

	@Override
	public List<UserDto> selectUser() throws Exception {
		return userDao.selectUser();
	}

	@Override
	public List<UserDto> login(HashMap<String, String> map) throws Exception {
		return userDao.login(map);
	}

}
