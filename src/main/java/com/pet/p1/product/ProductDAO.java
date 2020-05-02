package com.pet.p1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pet.p1.util.Pager;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.pet.p1.product.ProductDAO.";
	
	public List<ProductVO> productList(Pager pager) throws Exception{
		System.out.println("productDAO list IN");
		return sqlSession.selectList(NAMESPACE+"productList",pager);
	}
	
	
	public long productCount(Pager pager) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"productCount", pager);
	}
}
