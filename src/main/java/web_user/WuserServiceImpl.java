package web_user;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.UserVO;

@Service
public class WuserServiceImpl implements WuserService {

	@Autowired WuserDAO dao;
	
	@Override
	public boolean user_join(UserVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserVO user_login(HashMap<String, String> map) {
		
		return dao.user_login(map);
	}

	@Override
	public boolean user_update(UserVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean user_delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
