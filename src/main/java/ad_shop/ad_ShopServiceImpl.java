package ad_shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	

}
