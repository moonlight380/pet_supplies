package com.pet.p1.member;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pet.p1.product.DogService;
import com.pet.p1.product.DogVO;
import com.pet.p1.util.Pager;


@Controller
@RequestMapping(value = "/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private DogService dogService;
	
//--------------------------------------------------------------------------------------------------------------

	
	
	//--장바구니
	
	
	@GetMapping("memberCart")
	public ModelAndView productList(Long productNum)throws Exception {
		
	//	List<DogVO> ar = memberService.productList(dogVO);

		ModelAndView mv = new ModelAndView();
		
//		mv.addObject("dog", dogVO);
		mv.setViewName("member/memberCart");
		
		return mv;
	}
	
	//--장바구니 끝
	
	
	
	//--회원가입
	@RequestMapping(value= "memberJoin")
	public void memberJoin() {
		
	}
	
	@RequestMapping(value= "memberJoin", method = RequestMethod.POST)
	public ModelAndView memberJoin(MemberVO memberVO, ModelAndView mv,HttpSession session) throws Exception {

		  int result = memberService.memberJoin(memberVO,session);
		  
		  String msg ="Member Join Fail";
		  if(result>0) { 
			msg = "Member Join Success";
			}
		  
		  mv.addObject("result", msg); 
		  mv.addObject("path", "../");
		  mv.setViewName("common/result");
		  
		return mv;
	}
	//--회원가입 끝
	
	
	
	//--로그인/로그아웃
	@RequestMapping(value= "memberLogin")
	public void memberLogin(@CookieValue(value = "cId", required = false)String cId, Model model) {
		//model.addAttribute("cId", cId);
		System.out.println(cId);
	}
	
	@RequestMapping(value= "memberLogin", method = RequestMethod.POST)
	public ModelAndView memberLogin(ModelAndView mv, MemberVO memberVO,HttpSession session, String remember, HttpServletResponse response) throws Exception {
		
		Cookie cookie = new Cookie("cId", "");
		
		if(remember != null) {
			cookie.setValue(memberVO.getId());
		}
		response.addCookie(cookie); 	//만든 쿠키 넣기
		
		 memberVO = memberService.memberLogin(memberVO);

		 if(memberVO != null) {
			 session.setAttribute("member", memberVO);
			 mv.setViewName("redirect:../");
		 }else {
			 mv.addObject("result", "Login Fail");
			 mv.addObject("path", "./memberJoin");
			 mv.setViewName("common/result");
		 }
				 
		return mv;
	}
	

	@RequestMapping(value = "memberLogout")
	public String memberLogout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	//--로그인/로그아웃 끝
	
	@PostMapping("memberEmailCheck")
	public ModelAndView memberEMCheck(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.memberEMCheck(memberVO);
		int result = 0;
		if(memberVO == null) {
			result = 1;
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	
	
	
	//-- id 중복검사
	@PostMapping("memberIdCheck")
	public ModelAndView memberIdCheck(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.memberIdCheck(memberVO);
		//null -> 가입 가능 1
		//!null -> 중복 0
		int result = 0;
		if(memberVO == null) {
			result = 1;
		}
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	//-- id 중복검사 끝
	
	
	
	
	
	
	
//-------------------------------------------------------------------------------------------------------	
	
	@RequestMapping(value="memberList", method = RequestMethod.GET)
	public ModelAndView memberList(Pager memberPager, ModelAndView mv)throws Exception{
		List<MemberVO> ar = memberService.memberList(memberPager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", memberPager);
		mv.setViewName("member/memberList");
		
		return mv;
	}
	
	@RequestMapping(value= "memberPage")
	public void memberPage()throws Exception {
		
	}

	
	@RequestMapping(value= "memberUpdate")
	public void memberUpdate() {
		
	}
	
	@RequestMapping(value= "memberUpdate", method = RequestMethod.POST)
	public ModelAndView memberUpdate(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception {
		String id = ((MemberVO)session.getAttribute("member")).getId();
		memberVO.setId(id);
		
		int result = memberService.memberUpdate(memberVO);
		
		if(result>0) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:./memberPage");
		}else {
			 mv.addObject("result", "Update Fail");
			 mv.addObject("path", "./memberPage");
			 mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	@RequestMapping(value= "memberDelete")
	public ModelAndView memberDelete(ModelAndView mv, HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		int result = memberService.memberDelete(memberVO);
		if(result>0) {
			session.invalidate();
			mv.addObject("result", "Delete Success");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}else {
			mv.addObject("result", "Delete Fail");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	
	
	@GetMapping("memberDeletes")
	public ModelAndView memberDeletes(String [] ids, ModelAndView mv)throws Exception{
		// 배열을 List로 변환
		List<String> list = Arrays.asList(ids); 
		int result = memberService.memberDeletes(list);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
		
//		for(String id : ids) {
//			MemberVO memberVO = new MemberVO();
//			memberVO.setId(id);
//			memberService.memberDelete(memberVO);
//		}
		
	}
	
	@GetMapping("memberLists")
	public ModelAndView memberLists(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberVO> ar = memberService.memberList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("member/memberLists");
		
		return mv;
	}
	
	

}