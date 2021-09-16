package com.cho.service;

import java.util.List;
import java.util.Map;

import com.cho.dto.BoardVO;

public interface BoardService {
	
	public List<BoardVO> selectBoard() throws Exception;

	public void insertBoard(Map<String, String> boardmap) throws Exception;
}
