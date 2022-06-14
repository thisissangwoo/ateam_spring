package ad_main;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class GraphDAO implements GraphService {

	
	@Autowired @Qualifier("ateam") SqlSession sql;
	
	@Override
	public List<graphVO> search(HashMap<String, String> map) {
		
		return sql.selectList("ad_graph.mapper.select",map);
	}
}
