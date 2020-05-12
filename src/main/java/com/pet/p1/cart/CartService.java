package com.pet.p1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.p1.member.MemberVO;

@Service
public class CartService {
	@Autowired
	private CartDAO cartDAO;
	
	public Long cartCount(String id)throws Exception{
		return cartDAO.cartCount(id);
	}
}
