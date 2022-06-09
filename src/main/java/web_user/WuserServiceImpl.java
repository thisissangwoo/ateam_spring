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


	@Override
	public boolean user_social_email(UserVO vo) {
		return dao.user_social_email(vo);
	}

	@Override
	public boolean user_email_chk(String id) {
		return dao.user_email_chk(id);
	}

	@Override
	public boolean user_social_insert(UserVO vo) {
		return dao.user_social_insert(vo);
	}

	@Override
	public boolean user_social_update(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.user_social_update(vo);
	}

}
