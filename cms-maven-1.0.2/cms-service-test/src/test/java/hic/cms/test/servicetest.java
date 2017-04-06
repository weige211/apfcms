package hic.cms.test;



import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hic.service.ICms_ArticleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class servicetest {
	
//	@Resource 
// private ICms_ArticleService dao=null;
	@Test
	public void test1() {
        // List<Sys_menu> syslist = sys_menuService.getAll();
        // List<Node> treelist = ConvertUtl.getChildNodes(0, syslist);
		// System.out.println(user.getUserName());
		// logger.info("ֵ��"+user.getUserName());
		// logger.info(JSON.toJSONString(sys));
		// SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		// String date=formatter.format(sys.getCreatetime());
		// cache.refresh("test", "ok");
		int count=0;//dao.getCount();
		// String res=cache.getCache("test");
		System.out.println("count值为：" + count);
		// System.out.println("�˵���" + JSON.toJSONString(treelist));
	}
}
