package hic.system.common.util;

import hic.system.common.dto.Node;

import java.util.ArrayList;
import java.util.List;

import com.hic.model.Sys_menu;

public class ConvertUtl {

	public static List<Node> getChildNodes(int par, List<Sys_menu> list) {
		List<Node> nodelist = new ArrayList<Node>();
		for (Sys_menu sys : list) {
			System.out.println("c�˵�����ǰ��" + sys.getMenuname());
			if (sys.getParid().equals(par)) {
				Node node = new Node();
				// nodelist=new ArrayList<Node>();
				// node.
				node.setId(sys.getMid());
				node.setHref(sys.getUrl());
				node.setText(sys.getMenuname());
				List<Node> tmplist = getChildNodes(node.getId(), list);
				if (tmplist != null && tmplist.size() > 0) {
					node.setNodes(tmplist);
				}
				System.out.println("c�˵����Ժ�" + sys.getMenuname());
				nodelist.add(node);
			}
		}
		return nodelist;
	}

}
