package ad_main;

import java.util.HashMap;
import java.util.List;

public interface GraphService {
	
	List<graphVO> search(HashMap<String, String> map);

}
