package ad_shop;

import java.util.List;

import ad_contents.ContentsPage;
import web_shop.WReviewPage;
import web_shop.WReviewVO;
import web_shop.ShopDetailVO;

public interface ad_ShopService {
	
	ShopDetailVO order_detail(int id);

	
	//관리자 shop 제품 리스트, 리뷰 리스트=====================================================================================
	
	//리뷰 리스트 전체보기
	List<web_shop.WReviewVO>review_list();
	
	
	
	
	//리뷰 리스트 페이징 처리
	WReviewPage review_list(WReviewPage page);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//=====================================================================================
	
	List<web_shop.ShopDetailVO> order_list();
	ad_ShopDetailPage order_list(ad_ShopDetailPage page);
}
