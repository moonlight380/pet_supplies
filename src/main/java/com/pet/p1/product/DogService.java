package com.pet.p1.product;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pet.p1.product.file.ProductFileDAO;
import com.pet.p1.product.file.ProductFileVO;
import com.pet.p1.util.FileSaver;
import com.pet.p1.util.Pager;

@Service
@Transactional //알아서 롤백
public class DogService {
	@Autowired
	private DogDAO dogDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private ProductFileDAO productFileDAO;
	
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
	
//dogWrite(insert)
	public int dogWrite(DogVO dogVO,MultipartFile[] files) throws Exception {
		String path = servletContext.getRealPath("/resources/upload");
		
		System.out.println(path);
		
		
		//시퀀스 번호 받기 dual로 맵퍼에서 가져옴
		dogVO.setProductNum(dogDAO.dogNum());
		
		//dogDAO table insert
		int result=dogDAO.dogWrite(dogVO);
		
		
		for(MultipartFile file:files) {
			if(file.getSize()>0) {
			ProductFileVO productFileVO = new ProductFileVO(); // 한번 돌때마다 새로운 파일
			String fileName=fileSaver.saveByTransfer(file, path);
			productFileVO.setNum(dogVO.getProductNum());//productTable에 글을 인서트하면 이 파일이 누구의 글에 있는 파일이냐
			productFileVO.setFileName(fileName);
			productFileVO.setOriName(file.getOriginalFilename());
			productFileVO.setBoard(1);
			
			productFileDAO.fileInsert(productFileVO); //파일의 갯수만큼이라서 반복문 안에
			}
		}
		
		return result;
	}
	
	
	
//select
	
	public DogVO dogSelect(long productNum) throws Exception {
		dogDAO.hitUpdate(productNum);
		return dogDAO.dogSelect(productNum);
	}
//update
	public int dogUpdate (DogVO dogVO) throws Exception{	
		return dogDAO.dogUpdate(dogVO);
	}
	
//delete
	public int dogDelete(long productNum) throws Exception {
		
		return dogDAO.dogDelete(productNum);
	}
	
}//end class
