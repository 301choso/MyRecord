package com.cho.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cho.domain.BoardVO;
import com.cho.domain.Criteria;
@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> selectBoard(Criteria cri) throws Exception {		
		return sqlSession.selectList("board.selectBoard", cri);		
	}
	
	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne("board.listCount");	
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
	public void updateBoard(Map<String, Object> boardmap) throws Exception {
		sqlSession.update("board.updateBoard",boardmap);
		
	}


}
