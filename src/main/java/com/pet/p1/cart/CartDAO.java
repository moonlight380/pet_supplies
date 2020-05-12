package com.pet.p1.cart;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pet.p1.member.MemberVO;

@Repository
public class CartDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.pet.p1.cart.CartDAO.";
	
	public Long cartCount(String id)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"cartCount",id);
	}
}
