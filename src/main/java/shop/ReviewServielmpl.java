package shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ReviewServielmpl implements ReviewService {

	@Autowired private ReviewDAO dao;
	
	@Override
	public void Review_insert(ReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ReviewVO> review_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewVO review_detail(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void review_update(ReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void review_delete(int id) {
		// TODO Auto-generated method stub

	}

}
