package com.hic.controller;

import hic.system.common.dto.Cms_ArticleDto;
import hic.system.common.dto.Node;
import hic.system.common.dto.PageInfoDto;
import hic.system.common.util.ConvertUtl;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hic.model.Cms_Article;
import com.hic.model.Cms_Category;
import com.hic.model.Sys_menu;
import com.hic.service.ICms_ArticleService;
import com.hic.service.ICms_CategoryService;
import com.hic.service.ISys_menuService;

@Controller
public class WebUIController {

	private static Logger logger = LoggerFactory
			.getLogger(WebUIController.class);
	
	private int pageSize=5;

	@Resource
	private ISys_menuService menuService = null;
	
	@Resource
	private ICms_ArticleService artservice = null;
	
	@Resource
	private ICms_CategoryService cateservice = null;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getIndex(Model model) {
		try {
			List<Sys_menu> list = this.menuService.getAll();
			// System.out.println("������" + list.size());
			List<Node> treelist = ConvertUtl.getChildNodes(20, list);
			model.addAttribute("list", treelist);
			return "webui/index";
		} catch (Exception e) {
			logger.error("��ȡ�˵��б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�˵��б�ʧ�ܣ�");
			return "erro";
		}
	}
	
	@RequestMapping(value = "/imglist/{nowPage}/page", method = RequestMethod.GET)
	public String getImgList(@PathVariable("nowPage") int nowPage,HttpServletRequest request,Model model) {
		try {
			int cid=Integer.parseInt(request.getParameter("cid"));
			
			model.addAttribute("cid", cid);
			int curmenu=Integer.parseInt(request.getParameter("curmenu"));
			model.addAttribute("curmenu", curmenu);
			
			int start = (nowPage - 1) * pageSize;
			int c = artservice.getCountBycid(cid);
			double num = (double) c / this.pageSize;
			Double d_s = new Double(Math.ceil(num));
			int count = d_s.intValue();
			
			List<Cms_Article> pagelist=artservice.getPageByCid(cid, start, pageSize);
			PageInfoDto<Cms_Article> page = new PageInfoDto<Cms_Article>();
			page.setCount(count);
			page.setNowPage(nowPage);
			page.setPageSize(this.pageSize);
			page.setPage(pagelist);
			model.addAttribute("page", page);
			
			
			List<Sys_menu> list = this.menuService.getAll();
			// System.out.println("������" + list.size());
			List<Node> treelist = ConvertUtl.getChildNodes(20, list);
			model.addAttribute("list", treelist);
			
			return "webui/imglist";
		} catch (Exception e) {
			logger.error("��ȡ�����б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�����б�ʧ�ܣ�");
			return "erro";
		}
	}
	
	@RequestMapping(value = "/content/{aid}", method = RequestMethod.GET)
	public String getContent(@PathVariable("aid") int aid,HttpServletRequest request,Model model) {
		try {
			//int cid=Integer.parseInt(request.getParameter("cid"));
			int curmenu=Integer.parseInt(request.getParameter("curmenu"));
			model.addAttribute("curmenu", curmenu);
			
			
			
			Cms_Article entity=artservice.getByID(aid);
			
			Cms_ArticleDto dto=new Cms_ArticleDto();
			dto.setAid(entity.getAid());
			dto.setAlt(entity.getAlt());
			dto.setAuthor(entity.getAuthor());
			dto.setCid(entity.getCid());
			dto.setTitle(entity.getTitle());
			dto.setSummary(entity.getSummary());
			dto.setContent(entity.getContent());
			dto.setRemark(entity.getRemark());
			dto.setImgurl(entity.getImgurl());
			//��ʽ����ʾʱ��
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");  
		    String time = format.format(entity.getCreatetime());   
			dto.setCreatetime(time);
			
			model.addAttribute("entity",dto);
			
			Cms_Category cateEntity=cateservice.getByID(entity.getCid());
			model.addAttribute("cateEntity",cateEntity );
		
			
			List<Sys_menu> list = this.menuService.getAll();
			// System.out.println("������" + list.size());
			List<Node> treelist = ConvertUtl.getChildNodes(20, list);
			model.addAttribute("list", treelist);
			
			return "webui/content";
		} catch (Exception e) {
			logger.error("��ȡ��������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ��������ʧ�ܣ�");
			return "erro";
		}
	}
	
	@RequestMapping(value = "/content/{aid}/blank", method = RequestMethod.GET)
	public String getContentBlank(@PathVariable("aid") int aid,HttpServletRequest request,Model model) {
		try {
			//int cid=Integer.parseInt(request.getParameter("cid"));
			int curmenu=Integer.parseInt(request.getParameter("curmenu"));
			model.addAttribute("curmenu", curmenu);
			
			
			
			Cms_Article entity=artservice.getByID(aid);
			
			Cms_ArticleDto dto=new Cms_ArticleDto();
			dto.setAid(entity.getAid());
			dto.setAlt(entity.getAlt());
			dto.setAuthor(entity.getAuthor());
			dto.setCid(entity.getCid());
			dto.setTitle(entity.getTitle());
			dto.setSummary(entity.getSummary());
			dto.setContent(entity.getContent());
			dto.setRemark(entity.getRemark());
			dto.setImgurl(entity.getImgurl());
			//��ʽ����ʾʱ��
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");  
		    String time = format.format(entity.getCreatetime());   
			dto.setCreatetime(time);
			
			model.addAttribute("entity",dto);
			
			Cms_Category cateEntity=cateservice.getByID(entity.getCid());
			model.addAttribute("cateEntity",cateEntity );
		
			
			List<Sys_menu> list = this.menuService.getAll();
			// System.out.println("������" + list.size());
			List<Node> treelist = ConvertUtl.getChildNodes(20, list);
			model.addAttribute("list", treelist);
			
			return "webui/blankcontent";
		} catch (Exception e) {
			logger.error("��ȡ��������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ��������ʧ�ܣ�");
			return "erro";
		}
	}

}
