package com.pet.p1.product;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import com.pet.p1.util.FileSaver;
import com.pet.p1.util.Pager;

@Service
public class DogService {
	@Autowired
	private DogDAO dogDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileSaver fileSaver;
	
	
//dogList	
	public List<DogVO> dogList(Pager pager) throws Exception{
		pager.makeRow();
		
		long totalCount= dogDAO.dogCount(pager);
		pager.makePage(totalCount);
		
		
		return dogDAO.dogList(pager);
	}
//pNewList	
	public List<DogVO> dogNewList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount= dogDAO.dogCount(pager);
		pager.makePage(totalCount);
		
		return dogDAO.dogNewList(pager);
	}	
//dogBestList	
	public List<DogVO> dogBestList(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount= dogDAO.dogCount(pager);
		pager.makePage(totalCount);
		System.out.println("dogBestList in");
		return dogDAO.dogBestList(pager);
	}		
//dogWrite	
	public int dogWrite(DogVO dogVO,MultipartFile[] files) throws Exception {
		String path = servletContext.getRealPath("/resources/upload");
		
		System.out.println(path);
		
		
		//시퀀스 번호 받기( dual로 맵퍼에서 가져옴
		dogVO.setProductNum(dogDAO.dogNum());
		
		//noticeDAO table insert
		int result=dogDAO.dogWrite(dogVO);
		
		
//		for(MultipartFile file:files) {
//			if(file.getSize()>0) {
//			BoardFileVO boardFileVO = new BoardFileVO(); // 한번 돌때마다 새로운 파일
//			String fileName=fileSaver.saveByTransfer(file, path);
//			boardFileVO.setNum(boardVO.getNum());
//			boardFileVO.setFileName(fileName);
//			boardFileVO.setOriName(file.getOriginalFilename());
//			boardFileVO.setBoard(1);
//			
//			boardFileDAO.fileInsert(boardFileVO); //파일의 갯수만큼이라서 반복문 안에
//			}
//		}
		
		return result;
	}
	
	
	
//select
	
	public DogVO dogSelect(long productNum) throws Exception {
		dogDAO.dogSelect(productNum);
		
		return dogDAO.dogSelect(productNum);
	}
//update
	public int dogUpdate (DogVO dogVO) throws Exception{	
		return dogDAO.dogUpdate(dogVO);
	}
	
//delete
	public int dogDelete(long productNum) throws Exception {
		System.out.println("servixe");
		return dogDAO.dogDelete(productNum);
	}
	
}//end class
