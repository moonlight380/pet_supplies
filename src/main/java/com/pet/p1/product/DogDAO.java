package com.pet.p1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pet.p1.util.Pager;

@Repository
public class DogDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.pet.p1.product.DogDAO.";
	
	public List<DogVO> dogList(Pager pager) throws Exception{
		System.out.println("DogDAO list IN");
		return sqlSession.selectList(NAMESPACE+"dogList",pager);
	}
	
	
	public long dogCount(Pager pager) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"dogCount", pager);
	}
}
