package shop;

import java.util.List;

import web_notice.NoticeVO;

public interface ReviewService {
	
void Review_insert(ReviewVO vo);

	List<ReviewVO>review_list();
	
	ReviewVO review_detail(int id);
	
	void review_update(ReviewVO	vo);
	
	void review_delete(int id);
	
}
