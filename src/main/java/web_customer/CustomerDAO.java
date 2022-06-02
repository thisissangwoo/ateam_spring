package web_customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAO implements CustomerService {

	@Autowired @Qualifier("ateam") private SqlSession sql;
	
	@Override
	public void qna_insert(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void qna_reply_insert(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CustomerVO> qna_list() {
		return sql.selectList("customer.mapper.qnalist");
	}

	@Override
	public CustomerVO qna_detail(int id) {
		return sql.selectOne("customer.mapper.qnadetail", id);
	}

	@Override
	public void qna_update(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void qna_delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void qna_read(int id) {
		sql.update("customer.mapper.qnaread", id);

	}

	@Override
	public void faq_insert(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CustomerVO> faq_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CustomerVO faq_detail(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void faq_update(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void faq_delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void faq_read(int id) {
		// TODO Auto-generated method stub

	}

}
