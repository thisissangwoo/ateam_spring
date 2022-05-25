package review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {

	
	@Autowired @Qualifier("ateam") SqlSession sql;
	
	public void insertReview(ReviewVO vo) {
		sql.insert("review.mapper.insert",vo);
	}
}
