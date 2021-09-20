package com.cho.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cho.dto.BoardVO;
@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> selectBoard() throws Exception {
		List<BoardVO> list = sqlSession.selectList("board.selectBoard");
		return list;
	}

	@Override
	public void insertBoard(Map<String, String> boardmap) throws Exception {
		sqlSession.insert("board.insertBoard",boardmap);
	}
	
	@Override
	public BoardVO selectBoardTitle(int board_id) throws Exception {
		BoardVO boardVO =  (BoardVO)sqlSession.selectOne("board.selectBoardTitle",board_id);
		return boardVO;
	}

	@Override
	public void deleteBoard(int board_id) throws Exception {
		sqlSession.delete("board.deleteBoard",board_id);
		
	}

	@Override
	public void updateBoard(int board_id) throws Exception {
		sqlSession.update("board.updateBoard",board_id);
		
	}

}
