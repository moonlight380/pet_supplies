package com.pet.p1.product.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/productFile/**")
public class ProductFileController {
	@Autowired
	private ProductFileService productFileService;

//fileInsert
	@PostMapping("fileInsert")
	public ModelAndView fileInsert(MultipartFile files,ModelAndView mv) throws Exception{
		String fileName =productFileService.fileInsert(files);
		mv.addObject("result", fileName);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("fileDown")
	public ModelAndView fileDown(ProductFileVO productFileVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		productFileVO=productFileService.fileSelect(productFileVO);
		mv.addObject("file",productFileVO);
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	
	
	
}//end class
