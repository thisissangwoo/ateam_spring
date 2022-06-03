package web_shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ReviewServielmpl implements ReviewService {

	@Autowired private WReviewDAO dao;
	
	@Override
	public void Review_insert(WReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<WReviewVO> review_list() {
		return dao.review_list();
	}

	@Override
	public WReviewVO review_detail(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void review_update(WReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void review_delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public WReviewPage review_list(WReviewPage page) {
			
		return dao.review_list(page);
	}

}
