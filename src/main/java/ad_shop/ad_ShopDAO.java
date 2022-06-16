package ad_shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import web_notice.NoticeVO;
import web_shop.ShopDetailVO;
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
	
	
	
	
	
	
	
	
	//========================================================================================================
	@Override
	public ShopDetailVO order_detail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne("ad_order.mapper.detail", id);
	}

	@Override
	public List<ShopDetailVO> order_list() {
		// TODO Auto-generated method stub
		return sql.selectList("ad_order.mapper.list");
	}

	@Override
	public ad_ShopDetailPage order_list(ad_ShopDetailPage page1) {
		// TODO Auto-generated method stub
		int pagecnt = sql.selectOne("ad_order.mapper.totalList", page1);
		page1.setTotalList(pagecnt);
		
		List<ShopDetailVO> list = sql.selectList("ad_order.mapper.list", page1);
		page1.setList(list);		
		return page1;
		
		
	}

}
