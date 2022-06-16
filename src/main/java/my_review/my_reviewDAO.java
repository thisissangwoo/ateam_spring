package my_review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import web_shop.WReviewVO;

@Repository
public class my_reviewDAO implements my_reviewService {

	@Autowired @Qualifier ("ateam") SqlSession sql;
	
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
		// TODO Auto-generated method stub
		return null;
	}

}
