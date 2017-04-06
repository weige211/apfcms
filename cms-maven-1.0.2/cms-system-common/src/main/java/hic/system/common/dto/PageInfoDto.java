package hic.system.common.dto;

import java.util.List;

public class PageInfoDto<T> {

	private int pageSize;
	private int count;
	private int nowPage;
	private List<T> page;

	public PageInfoDto() {

	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public List<T> getPage() {
		return page;
	}

	public void setPage(List<T> page) {
		this.page = page;
	}

	public PageInfoDto(int pageSize, int count, int nowPage, List<T> page) {
		super();
		this.pageSize = pageSize;
		this.count = count;
		this.nowPage = nowPage;
		this.page = page;
	}

}
