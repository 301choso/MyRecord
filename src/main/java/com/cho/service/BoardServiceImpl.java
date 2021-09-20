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

	@Override
	public BoardVO selectBoardTitle(int board_id) throws Exception {
		BoardVO list = boardDao.selectBoardTitle(board_id);
		return list;
	}

	@Override
	public void deleteBoard(int board_id) throws Exception {
		boardDao.deleteBoard(board_id);
	}

	@Override
	public void updateBoard(int board_id) throws Exception {
		boardDao.updateBoard(board_id);
		
	}
	
}
