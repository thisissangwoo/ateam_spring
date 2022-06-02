package web_customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired private CustomerDAO dao;
	
	@Override
	public void qna_insert(CustomerVO vo) {
		dao.qna_insert(vo);
	}

	@Override
	public void qna_reply_insert(CustomerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CustomerVO> qna_list() {
		return dao.qna_list();
	}

	@Override
	public CustomerVO qna_detail(int id) {
		return dao.qna_detail(id);
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
		dao.qna_read(id);
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
