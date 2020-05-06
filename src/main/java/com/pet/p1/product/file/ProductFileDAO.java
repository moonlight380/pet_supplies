package com.pet.p1.product.file;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.pet.s5.product.file.ProductFileVO.";
	
	public int fileInsert (ProductFileVO productFileVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert",productFileVO);
	}
	
	
	
}//END CLASS
