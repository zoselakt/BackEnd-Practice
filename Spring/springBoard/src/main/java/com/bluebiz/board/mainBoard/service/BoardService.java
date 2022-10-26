package com.bluebiz.board.mainBoard.service;

import java.util.List;

import com.bluebiz.board.mainBoard.domain.BoardDto;

public interface BoardService {
	int insert(BoardDto boardDto) throws Exception;
	int update(BoardDto boardDto) throws Exception;
	int delete(Integer bnum) throws Exception;
	
	List<BoardDto> selectAll() throws Exception;
	List<BoardDto> selectOne(Integer bnum) throws Exception;
	
	int count(Integer bnum) throws Exception;
	int readCnt(Integer bnum) throws Exception;
}