package my_shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web_shop.ShopDetailVO;

@Service
public class my_ShopServiceImpl implements my_ShopService {
	
	@Autowired private my_ShopDAO dao;

	public ShopDetailVO order_detail(String user_id) {
		// TODO Auto-generated method stub
		return dao.order_detail(user_id);
		
	}

}