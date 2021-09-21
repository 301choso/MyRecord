package com.cho.service;

import java.util.List;
import java.util.Map;

import com.cho.dto.BoardVO;

public interface BoardService {
	
	public List<BoardVO> selectBoard() throws Exception;

	public void insertBoard(Map<String, String> boardmap) throws Exception;

	public BoardVO selectBoardTitle(int board_id) throws Exception;

	public void deleteBoard(int board_id) throws Exception;

	public void updateBoard(Map<String, Object> boardmap) throws Exception;


}
