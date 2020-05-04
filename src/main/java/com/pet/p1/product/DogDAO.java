package com.pet.p1.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pet.p1.util.Pager;

@Repository
public class DogDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.pet.p1.product.DogDAO.";

	//dual에서 먼저 조회
	public long dogNum() throws Exception{
			return sqlSession.selectOne(NAMESPACE+"dogNum");
	}
	//list
	public List<DogVO> dogList(Pager pager) throws Exception{
		
		return sqlSession.selectList(NAMESPACE+"dogList",pager);
	}
	
	//count
	public long dogCount(Pager pager) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"dogCount", pager);
	}
	//dogWrite
	public int dogWrite(DogVO dogVO)throws Exception{
		
		return sqlSession.insert(NAMESPACE+"dogWrite",dogVO);
	}
	
	
	//SELECT
	public DogVO dogSelect(long productNum) throws Exception {
	
	return sqlSession.selectOne(NAMESPACE+"dogSelect", productNum);
		}

	//update
	public int dogUpdate(DogVO dogVO) throws Exception{
	
		return sqlSession.update(NAMESPACE+"dogUpdate",dogVO);
	}

//	//HIT UPDATE
//	public int hitUpdate(long productNum) throws Exception {
//		// TODO Auto-generated method stub
//		return sqlSession.update(NAMESPACE+"hitUpdate", productNum);
//	}

	//DELETE
	
	public int dogDelete(long productNum) throws Exception {
		System.out.println("DAO");
		return sqlSession.delete(NAMESPACE+"dogDelete",productNum);
	}
	
	
}//end class

