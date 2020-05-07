package com.pet.p1.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component// new fileSaver 해라
public class FileSaver {
	
	//1. 폴더 생성
	//2.저장할 파일명 생성
	//3.파일 HDD 저장

	
	//2.MultipartFile
	public String saveByTransfer(MultipartFile file, String path) throws Exception{
		
		File f = new File(path);
		
		if(!f.exists()){	
			f.mkdirs();}
		String fileName = this.makeNameByUUID(file.getOriginalFilename());
		f = new File(f, fileName);
		file.transferTo(f);
		return fileName;  //이네임을 가지고 디비에 저장
		
	}
	

	
	
	///////////////////////////////////////////////////////////////////////////////////
	
	//aa.
	private String makeNameByUUID(String name) {
		
		//static 메서드가 있음
		String result=UUID.randomUUID().toString();
		result=result+"_"+name;
		return result;
	}
	//aa.
	private String makeNameByTime(String name) {
		Calendar ca = Calendar.getInstance();
		Long l=ca.getTimeInMillis();
		System.out.println(name);
		String result= name.substring(0, name.indexOf("."));
		result = result+"_"+l;
		result= result+name.substring(name.lastIndexOf("."));
		System.out.println(result);
		
		
		
		return result;
	}
	
////////////////////////////////////////////////////////////////////////	
	//file Delete
	public int deleteFile(String fileName, String path) throws Exception{
		File file = new File(path, fileName);
		boolean check = false;
		int result=0;
		if(file.exists()) {
			check=file.delete();
		}
		
		if(check) {
			result=1;
		}
		return result;
	}
	
}
