package com.cho.sh;

import java.util.List;

import org.junit.Test;

import com.cho.dao.BoardDAO;
import com.cho.dao.BoardDAOImpl;
import com.cho.domain.BoardVO;
import com.cho.domain.Criteria;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BoardDAOTest {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	@Test
	public void testListPage() throws Exception{
		
		
		Criteria cri = new Criteria();
		
		BoardDAO dao = new BoardDAOImpl();
		//List<BoardVO> list = dao.selectBoard(cri);
//		for(BoardVO boardVO: list) {
//			logger.info(boardVO.getBoard_id() + ":" + boardVO.getTitle());
//		}
	}
}
