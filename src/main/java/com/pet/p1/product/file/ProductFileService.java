package com.pet.p1.product.file;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pet.p1.util.FileSaver;

@Service
@Transactional //알아서 롤백
public class ProductFileService {
	@Autowired
	private ProductFileDAO productFileDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileSaver fileSaver;
	
//fileInsert
	public String fileInsert(MultipartFile files) throws Exception{
		String path=servletContext.getRealPath("/resources/summer");
		System.out.println(path);
		path=fileSaver.saveByTransfer(files, path);
		path=servletContext.getContextPath()+"/resources/summer/"+path;
		//getContextPath():web application의 Server측 Path 취득

		return path;
	}	
//fileSelect
	public ProductFileVO fileSelect(ProductFileVO productFileVO)throws Exception{
		
		return productFileDAO.fileSelect(productFileVO);
	}
	
	
	
}//end productFileService
