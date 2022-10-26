package com.bluebiz.board.user.service;

import java.util.List;

import com.bluebiz.board.user.domain.UserDto;

public interface UserService {
	int insert(UserDto userDto) throws Exception;
	int update(UserDto userDto) throws Exception;
	int delete(Integer unum) throws Exception;
	List<UserDto> selectUser() throws Exception;
}
