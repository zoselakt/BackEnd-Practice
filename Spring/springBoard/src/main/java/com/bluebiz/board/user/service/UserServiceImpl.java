package com.bluebiz.board.user.service;

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
	public int insert(UserDto userDto) throws Exception {
		return userDao.insert(userDto);
	}

	@Override
	public int update(UserDto userDto) throws Exception {
		return userDao.update(userDto);
	}

	@Override
	public int delete(Integer unum) throws Exception {
		return userDao.delete(unum);
	}

	@Override
	public List<UserDto> selectUser() throws Exception {
		return userDao.selectUser();
	}

}
