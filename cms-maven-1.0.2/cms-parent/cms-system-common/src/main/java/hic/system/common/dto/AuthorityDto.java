package hic.system.common.dto;

public class AuthorityDto {

	private Integer outhid;

	private String outhrname;

	private String remark;

	public AuthorityDto() {

	}

	public Integer getOuthid() {
		return outhid;
	}

	public void setOuthid(Integer outhid) {
		this.outhid = outhid;
	}

	public String getOuthrname() {
		return outhrname;
	}

	public void setOuthrname(String outhrname) {
		this.outhrname = outhrname;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public AuthorityDto(Integer outhid, String outhrname, String remark) {
		super();
		this.outhid = outhid;
		this.outhrname = outhrname;
		this.remark = remark;
	}

}
