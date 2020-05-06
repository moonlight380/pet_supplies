package com.pet.p1.product.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pet.p1.product.DogVO;
@Repository
public class BoardFileDAO {
	
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.google.s5.board.file.BoardFileDAO.";
	//맨마지막에 .을 붙여줘야 나중에 NAMESPACE에서 .을 안써줄 수 있다.

	//select
	public BoardFileVO fileSelect(BoardFileVO boardFileVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"fileSelect",boardFileVO);
	}
	//INSERT -> return int 
	public int fileInsert(BoardFileVO boardFileVO) throws Exception {
		
		return sqlSession.insert(NAMESPACE+"fileInsert",boardFileVO);
	}
	
	//fileDelete
	public int fileDelete(BoardFileVO boardFileVO)throws Exception{
		
		return sqlSession.delete(NAMESPACE+"fileDelete",boardFileVO);
	}
	
	//fileDeleteAll
		public int fileDeleteAll(Long num)throws Exception{
			
			return sqlSession.delete(NAMESPACE+"fileDeleteAll",num);
		}
		
	//fileList
	public List<BoardFileVO> fileList(Long num) throws Exception{
		return sqlSession.selectList(NAMESPACE+"fileList", num);
	}
	
}
