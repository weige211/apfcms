package hic.system.common.dto;

public class User_RoleDto {

	private Integer urid;

	private String uid;

	private Integer rid;

	private String remark;

	public User_RoleDto() {

	}

	public User_RoleDto(Integer urid, String uid, Integer rid, String remark) {
		super();
		this.urid = urid;
		this.uid = uid;
		this.rid = rid;
		this.remark = remark;
	}

	public Integer getUrid() {
		return urid;
	}

	public void setUrid(Integer urid) {
		this.urid = urid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
