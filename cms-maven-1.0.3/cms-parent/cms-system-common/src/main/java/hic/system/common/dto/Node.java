package hic.system.common.dto;

import java.util.List;

public class Node {
	private int id;
	private String text;
	private String href;
	private List<Node> nodes;

	public Node() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public List<Node> getNodes() {
		return nodes;
	}

	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}

	public Node(int id, String text, String href, List<Node> nodes) {
		super();
		this.id = id;
		this.text = text;
		this.href = href;
		this.nodes = nodes;
	}

}
