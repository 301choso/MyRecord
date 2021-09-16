package com.cho.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cho.dao.BoardDAO;
import com.cho.dto.BoardVO;
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDao;

	@Override
	public List<BoardVO> selectBoard() throws Exception {		
		return boardDao.selectBoard();
	}

	@Override
	public void insertBoard(Map<String, String> boardmap) throws Exception {
		boardDao.insertBoard(boardmap);
		
	}
	
}
