package ad_contents;

import java.util.List;

public interface ContentsService {					// CRUD (Create, Read, Update, Delete)

	void notice_insert(ContentsVO vo);				// 공지글 신규 저장(C)
	
	List<ContentsVO>notice_list();					// 공지글 목록 조회(R)
	
	ContentsPage notice_list(ContentsPage page);	// 공지글 목록 조회 - 페이지 처리된 (R)
	
	ContentsVO notice_detail(int id);				// 공지글 상세조회(R)
	
	void notice_update(ContentsVO vo);				// 공지글 변경저장(U)
	
	void notice_delete(int id);						// 공지글 삭제(D)
	
	void notice_read(int id);						// 공지글 조회시 조회수 증가 처리(U) 
	
}
