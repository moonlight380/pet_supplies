package com.pet.p1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.p1.util.Pager;

@Service
public class DogService {
	@Autowired
	private DogDAO dogDAO;
	
	public List<DogVO> dogList(Pager pager) throws Exception{
		pager.makeRow();
		
		long totalCount= dogDAO.dogCount(pager);
		pager.makePage(totalCount);
		System.out.println("dogService in");
		
		return dogDAO.dogList(pager);
	}
	
}
