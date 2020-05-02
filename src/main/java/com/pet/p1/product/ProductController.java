package com.pet.p1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pet.p1.util.Pager;

@Controller
@RequestMapping("/product/**")
public class ProductController {
@Autowired
private ProductService productService;

	@RequestMapping(value ="productList", method = RequestMethod.GET )
	public ModelAndView productList (ModelAndView mv,Pager pager)throws Exception {
		
		System.out.println("kind:"+pager.getKind());
		System.out.println("search:"+pager.getSearch());
		
		List<ProductVO> ar =productService.productList(pager);
		System.out.println(pager.getTotalPage());
		
		mv.addObject("list",ar);
		mv.addObject("pager",pager);
		
		mv.setViewName("product/productList");
		
		System.out.println("controller in");
		return mv;
	}
	
}//end class
