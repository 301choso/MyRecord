package com.cho.dao;

import java.util.List;
import java.util.Map;

import com.cho.dto.BoardVO;

public interface BoardDAO {

	public List<BoardVO> selectBoard() throws Exception;

	public void insertBoard(Map<String, String> boardmap) throws Exception;


}
