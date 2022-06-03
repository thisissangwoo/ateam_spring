package web_shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class WReviewDAO implements ReviewService {

	@Autowired @Qualifier("ateam") private SqlSession sql;
	
	@Override
	public void Review_insert(WReviewVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<WReviewVO> review_list() {
		return sql.selectList("wreview.mapper.list");
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
		int pagecnt = sql.selectOne("wreview.mapper.totalList", page);
		page.setTotalList(pagecnt);
		
		List<WReviewVO> list = sql.selectList("wreview.mapper.list", page);
		page.setList(list);
		return page;
	}

}
