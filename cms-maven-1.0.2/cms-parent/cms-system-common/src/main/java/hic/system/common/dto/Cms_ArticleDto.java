package hic.system.common.dto;


public class Cms_ArticleDto {
	  private Integer aid;

	    private String title;

	    private String summary;

	    private String author;

	    private String type;

	    private Integer cid;

	    private String alt;

	    private String imgurl;

	    private String createtime;
	    
	    private String remark;

	    private String content;

	public Cms_ArticleDto() {

	}

	public Cms_ArticleDto(Integer aid, String title, String summary,
			String author, String type, Integer cid, String alt, String imgurl,
			String createtime, String remark, String content) {
		super();
		this.aid = aid;
		this.title = title;
		this.summary = summary;
		this.author = author;
		this.type = type;
		this.cid = cid;
		this.alt = alt;
		this.imgurl = imgurl;
		this.createtime = createtime;
		this.remark = remark;
		this.content = content;
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


}
