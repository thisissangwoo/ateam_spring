package ad_shop;

import java.util.List;

import web_shop.WReviewPage;
import web_shop.WReviewVO;

public interface ad_ShopService {

	
	//관리자 shop 제품 리스트, 리뷰 리스트=====================================================================================
	
	//리뷰 리스트 전체보기
	List<web_shop.WReviewVO>review_list();
	
	
	
	//리뷰 리스트 페이징 처리
	WReviewPage review_list(WReviewPage page);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//=====================================================================================
	
	
}
