package hic.system.common.dto;


public class Cms_CategoryDto {
	private Integer cid;

    private String parid;

    private String catename;

    private String remark;
    
    
    public Cms_CategoryDto(){
    	
    }
    
    

	public Cms_CategoryDto(Integer cid, String parid, String catename,
			String remark) {
		super();
		this.cid = cid;
		this.parid = parid;
		this.catename = catename;
		this.remark = remark;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getParid() {
		return parid;
	}

	public void setParid(String parid) {
		this.parid = parid;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
    
    

}
