package ad_shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import web_shop.WReviewPage;
import web_shop.WReviewVO;


@Repository
public class ad_ShopDAO implements ad_ShopService {

	
	@Autowired @Qualifier ("ateam") private SqlSession sql;

	@Override
	public List<WReviewVO> review_list() {
		return sql.selectList("ad_shop.mapper.list");
	}

	@Override
	public WReviewPage review_list(WReviewPage page) {
		int pagecnt = sql.selectOne("ad_shop.mapper.totalList", page);
		page.setTotalList(pagecnt);
		
		List<web_shop.WReviewVO> list = sql.selectList("ad_shop.mapper.list" , page);
		page.setList(list);
		return page;
	}
	
	
}
