package com.pet.p1.product.file;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ProductFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.pet.p1.product.file.ProductFileDAO.";

	//fileInsert
	public int fileInsert (ProductFileVO productFileVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert",productFileVO);
	}
	
	//fileSelect
	public ProductFileVO fileSelect(ProductFileVO productFileVO)throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"fileSelect",productFileVO);
	}
	
	
	//fileDelete
	public int fileDelete(ProductFileVO productFileVO)throws Exception{
		
		return sqlSession.delete(NAMESPACE+"fileDelete",productFileVO);
	}
	
	//fileDeleteAll
	public int fileDeleteAll(Long num)throws Exception{
		return sqlSession.delete(NAMESPACE+"fileDeleteAll",num);
	}
	
}//END CLASS
