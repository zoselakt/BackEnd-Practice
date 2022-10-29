package com.bluebiz.board.user.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bluebiz.board.user.domain.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSession session;
	private static String namespace = "com.bluebiz.board.mapper.userMapper.";
	
	@Override
	public int userInsert(UserDto userDto) throws Exception {
		return session.insert(namespace+"userInsert", userDto);
	}
	@Override
	public int userUpdate(UserDto userDto) throws Exception {
		return session.update(namespace+"userUpdate", userDto);
	}
	@Override
	public int userDelete(Integer unum) throws Exception {
		return session.delete(namespace+"userDelete", unum);
	}
	@Override
	public List<UserDto> selectUser() throws Exception {
		return session.selectList(namespace+"selectUser");
	}
	@Override
	public List<UserDto> login(HashMap<String, String> map) throws Exception {
		return session.selectList(namespace+"login", map);
	}
	
	
}
