package com.bluebiz.board.user.dao;

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
	public int insert(UserDto userDto) throws Exception {
		return session.insert(namespace+"insert", userDto);
	}
	@Override
	public int update(UserDto userDto) throws Exception {
		return session.update(namespace+"update", userDto);
	}
	@Override
	public int delete(Integer unum) throws Exception {
		return session.delete(namespace+"delete", unum);
	}
	@Override
	public List<UserDto> selectUser() throws Exception {
		return session.selectList(namespace+"selectUser");
	}
	
	
}
