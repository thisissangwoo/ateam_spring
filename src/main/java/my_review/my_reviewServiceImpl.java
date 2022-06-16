package my_review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web_shop.WReviewVO;

@Service
public class my_reviewServiceImpl implements my_reviewService {

	@Autowired my_reviewDAO dao;
	
	@Override
	public void review_insert(WReviewVO vo) {
		// TODO Auto-generated method stub

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
	public MyReviewPage review_list(MyReviewPage page) {
		return dao.review_list(page);
	}

}
