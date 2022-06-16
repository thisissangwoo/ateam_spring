package my_shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web_shop.ShopDetailVO;

@Service
public class my_ShopServiceImpl implements my_ShopService {
	
	@Autowired private my_ShopDAO dao;
	
//==================== My 주문 목록 리스트 조회 ====================
	@Override
	public List<ShopDetailVO> order_list(String user_id) {
		// TODO Auto-generated method stub
		return dao.order_list(user_id);
	}
//==================== My 해당 주문 목록 상세 조회 =================
	public ShopDetailVO order_detail(String user_id) {
		// TODO Auto-generated method stub
		return dao.order_detail(user_id);
	}
}
