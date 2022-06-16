package my_shop;

import java.util.List;

import web_shop.ShopDetailVO;

public interface my_ShopService {
	
	ShopDetailVO order_detail(String user_id);
	
	List<web_shop.ShopDetailVO> order_list(String user_id);

}
