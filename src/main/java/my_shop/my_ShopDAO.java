package my_shop;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import web_shop.ShopDetailVO;

@Repository
public class my_ShopDAO implements my_ShopService {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

	public ShopDetailVO order_detail(String user_id) {
		// TODO Auto-generated method stub
		return sql.selectOne("my_order.mapper.detail", user_id);
	}

}
