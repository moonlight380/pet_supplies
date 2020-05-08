package com.pet.p1.member;



import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import com.pet.p1.product.DogDAO;
import com.pet.p1.product.DogVO;
import com.pet.p1.util.Pager;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	
	public List<DogVO> productList(DogVO dogVO)throws Exception{
		return memberDAO.memberCart(dogVO);
	}
	
	public List<MemberVO> memberList(Pager memberPager)throws Exception{
		memberPager.makeRow();
		long totalCount = memberDAO.memberCount(memberPager);
		memberPager.makePage(totalCount);
		return memberDAO.memberList(memberPager);
	}

	public int memberUpdate(MemberVO memberVO)throws Exception{
		return memberDAO.memberUpdate(memberVO);
	}
	
	public int memberDelete(MemberVO memberVO) throws Exception{
		return memberDAO.memberDelete(memberVO);
	}
	
	public MemberVO memberLogin(MemberVO memberVO)throws Exception{
		return memberDAO.memberLogin(memberVO);
	}
	
	public int memberJoin(MemberVO memberVO, HttpSession session)throws Exception{
		return memberDAO.memberJoin(memberVO);
	}

	
	public MemberVO memberIdCheck(MemberVO memberVO)throws Exception{
		return memberDAO.memberIdCheck(memberVO);
	}
	
	public int memberDeletes(List<String> list)throws Exception{
		return memberDAO.memberDeletes(list);
	}
	

}