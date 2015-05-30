package jacl;

import java.util.ArrayList;
import java.util.List;

public class Browser {
	private List<Page> pages = new ArrayList<Page>();

	public void addPage(Page page) {
		pages.add(page);
	}

	public Page getPage(int index) {
		return pages.get(index);
	}

	public int count() {
		return pages.size();
	}
}
