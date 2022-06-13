package ad_shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web_shop.ShopDetailVO;

@Service
public class ad_ShopServiceImpl implements ad_ShopService {
	
	@Autowired private ad_ShopDAO dao;

	@Override
	public ShopDetailVO order_detail(int id) {
		// TODO Auto-generated method stub
		return dao.order_detail(id);
	}

}
