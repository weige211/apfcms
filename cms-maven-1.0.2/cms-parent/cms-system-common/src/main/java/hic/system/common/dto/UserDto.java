package hic.system.common.dto;

public class UserDto {
	private String uid;

	private String username;

	private String password;

	private String phone;

	private String email;

	private String address;

	private int rid;

	private String remark;

	public UserDto() {

	}

	public UserDto(String uid, String username, String password, String phone,
			String email, String address, int rid, String remark) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.rid = rid;
		this.remark = remark;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getRid() {
		return this.rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
