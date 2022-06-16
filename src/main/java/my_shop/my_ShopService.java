package my_shop;

import java.util.List;

import web_shop.ShopDetailVO;

public interface my_ShopService {
	
	// My 주문 목록 리스트 조회 (R)
	List<web_shop.ShopDetailVO> order_list(String user_id);
	
	// My 해당 주문 목록 상세 조회 (R) 
	ShopDetailVO order_detail(String user_id);

}
