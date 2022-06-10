package ad_contents;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class ContentsPage extends PageVO {

	private List<ContentsVO> list;

	public List<ContentsVO> getList() {
		return list;
	}

	public void setList(List<ContentsVO> list) {
		this.list = list;
	}

}
