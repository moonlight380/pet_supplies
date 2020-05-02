package com.pet.p1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.p1.util.Pager;

@Service
public class ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	public List<ProductVO> productList(Pager pager) throws Exception{
		pager.makeRow();
		
		long totalCount= productDAO.productCount(pager);
		pager.makePage(totalCount);
		System.out.println("productService in");
		
		return productDAO.productList(pager);
	}
	
}
