package com.pet.p1.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.pet.p1.util.Pager;

public interface BoardService {
	// List
	public List<BoardVO> boardList(Pager pager) throws Exception;

	// Select
	public BoardVO boardSelect(long num) throws Exception;

	// Insert
	public int boardWrite(BoardVO boardVO, MultipartFile[] files) throws Exception;

	// update
	public int boardUpdate(BoardVO boardVO, MultipartFile[] files) throws Exception;

	// delete
	public int boardDelete(long num) throws Exception;

}
