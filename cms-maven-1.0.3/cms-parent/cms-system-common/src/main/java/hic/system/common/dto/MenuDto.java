package hic.system.common.dto;

public class MenuDto {
	private Integer mid;

	private Integer parid;

	private String menuname;

	private String url;

	private Integer type;

	// private Date createtime;
	//
	// private String createuser;
	//
	// private Date updatetime;
	//
	// private String updateuser;

	private String remark;

	public MenuDto() {

	}

	public MenuDto(Integer mid, Integer parid, String menuname, String url,
			Integer type, String remark) {
		super();
		this.mid = mid;
		this.parid = parid;
		this.menuname = menuname;
		this.url = url;
		this.type = type;
		this.remark = remark;
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public Integer getParid() {
		return parid;
	}

	public void setParid(Integer parid) {
		this.parid = parid;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
