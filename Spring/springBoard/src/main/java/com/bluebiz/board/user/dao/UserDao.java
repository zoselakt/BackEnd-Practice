package com.bluebiz.board.user.dao;

import java.util.HashMap;
import java.util.List;

import com.bluebiz.board.user.domain.UserDto;

public interface UserDao {
	int userInsert(UserDto userDto) throws Exception;
	int userUpdate(UserDto userDto) throws Exception;
	int userDelete(Integer unum) throws Exception;
	
	List<UserDto> selectUser() throws Exception;
	List<UserDto> login(HashMap<String, String> map) throws Exception;
}
