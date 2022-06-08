package web_user;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import user.UserVO;

@Repository
public class WuserDAO implements WuserService {

	
	@Autowired @Qualifier("ateam") SqlSession sql;
	
	
	@Override
	public boolean user_join(UserVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	//로그인 
	@Override
	public UserVO user_login(HashMap<String, String> map) {
		return sql.selectOne("wuser.mapper.login",map);
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
		// TODO Auto-generated method stub
		return false;
	}

	
	//이메일 중복체크
	@Override
	public boolean user_email_chk(String id) {
		return (Integer) sql.selectOne("wuser.mapper.emailchk",id) == 0 ? true : false;
	}

}
