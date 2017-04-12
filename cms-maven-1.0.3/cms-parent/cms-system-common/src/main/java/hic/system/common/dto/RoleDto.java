package hic.system.common.dto;

public class RoleDto {
	private Integer rid;

	private String rolename;

	private String remark;

	public RoleDto() {

	}

	public RoleDto(Integer rid, String rolename, String remark) {
		super();
		this.rid = rid;
		this.rolename = rolename;
		this.remark = remark;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
