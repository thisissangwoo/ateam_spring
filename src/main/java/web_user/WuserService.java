package web_user;

import java.util.HashMap;

import user.UserVO;

public interface WuserService {

	//회원 가입시 회원정보 저장
	boolean user_join(UserVO vo);
	
	//로그인시 회원정보 조회
	UserVO user_login(HashMap<String, String> map);
	
	//회원 정보 업데이트
	boolean user_update(UserVO vo);
	
	//회원 정보 삭제
	boolean user_delete(String id);
	
	//소셜 회원 정보 존재여부
	boolean user_social_email(UserVO vo);
	
	//회원 이메일 중복 여부 확인
	boolean user_email_chk(String id);
	
}
