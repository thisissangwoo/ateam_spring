package ad_shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web_shop.ShopDetailVO;
import web_shop.WReviewPage;
import web_shop.WReviewVO;

@Service
public class ad_ShopServiceImpl implements ad_ShopService {

	@Autowired private ad_ShopDAO dao;
	

	@Override
	public List<WReviewVO> review_list() {
		return dao.review_list();
	}

	@Override
	public WReviewPage review_list(WReviewPage page) {
		return dao.review_list(page);
	}
	
	
	//===============================================================================================
	@Override
	public ShopDetailVO order_detail(int id) {
		// TODO Auto-generated method stub
		return dao.order_detail(id);
	}

	@Override
	public List<ShopDetailVO> order_list() {
		// TODO Auto-generated method stub
		return dao.order_list();
	}

	@Override
	public ad_ShopDetailPage order_list(ad_ShopDetailPage page1) {
		// TODO Auto-generated method stub
		return dao.order_list(page1);
	}
	


}
