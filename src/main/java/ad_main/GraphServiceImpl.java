package ad_main;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

@Service
public class GraphServiceImpl implements GraphService {
	
	@Autowired GraphDAO dao;

	@Override
	public List<graphVO> search(HashMap<String, String> map) {
		
		return dao.search(map);
	}

}
