package com.hic.controller;

import hic.system.common.dto.Cms_CategoryDto;
import hic.system.common.dto.PageInfoDto;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hic.model.Cms_Category;
import com.hic.service.ICms_CategoryService;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {
	private static Logger logger = LoggerFactory
			.getLogger(CategoryController.class);
	
	
	@Resource
	private ICms_CategoryService service = null;

	private int pageSize = 5;

	@RequestMapping(value = "/categorys", method = RequestMethod.GET)
	public String getAll(Model model) {
		try {
			List<Cms_Category> list = service.getAll();
			model.addAttribute("list", list);
			return "category/categorys";
		} catch (Exception e) {
			logger.error("��ȡ�����б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�����б�ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAdd() {
		return "category/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Cms_CategoryDto dto, HttpSession session, Model model) {
		try {
			Cms_Category entity = new Cms_Category();
			entity.setCatename(dto.getCatename());
			entity.setRemark(dto.getRemark());

			entity.setParid("0");
			entity.setCreatetime(new Date());
			entity.setCreateuser(session.getAttribute("username").toString());
			service.add(entity);
//			List<Cms_Category> list = service.getAll();
//			model.addAttribute("list", list);
//			return "Category/Categorys";
			return "redirect:categorys/1/page";
		} catch (Exception e) {
			logger.error("��ӷ���ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ӷ���ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
	public String getUpdate(@PathVariable("id") int id, Model model) {
		try {
			Cms_Category entity = service.getByID(id);
			model.addAttribute("entity", entity);
			return "category/update";
		} catch (Exception e) {
			logger.error("��ȡ����������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ����������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Cms_CategoryDto dto, HttpSession session, Model model) {
		try {
			Cms_Category entity = new Cms_Category();
			entity.setCid(dto.getCid());
			entity.setCatename(dto.getCatename());
			entity.setRemark(dto.getRemark());
			entity.setRemark(dto.getRemark());
			entity.setUpdatetime(new Date());
			entity.setUpdateuser(session.getAttribute("username").toString());
			service.modifyByKey(entity);
//			List<Cms_Category> list = service.getAll();
//			model.addAttribute("list", list);
			return "redirect:categorys/1/page";
		} catch (Exception e) {
			logger.error("����������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "����������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{id}/del", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, Model model) {
		try {
			service.delByKey(id);
//			List<Cms_Category> list = service.getAll();
//			model.addAttribute("list", list);
//			return "Category/Categorys";
			return "redirect:/category/categorys/1/page";
		} catch (Exception e) {
			logger.error("ɾ��������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ��������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/categorys/{nowPage}/page", method = RequestMethod.GET)
	public String getPage(@PathVariable(value = "nowPage") int nowPage,
			Model model) {
		try {
			int start = (nowPage - 1) * pageSize;
			int c = service.getCount();
			double num = (double) c / this.pageSize;
			Double d_s = new Double(Math.ceil(num));
			int count = d_s.intValue();
			List<Cms_Category> list = service.getPage("", start, this.pageSize);
			PageInfoDto<Cms_Category> page = new PageInfoDto<Cms_Category>();
			page.setCount(count);
			page.setNowPage(nowPage);
			page.setPageSize(this.pageSize);
			page.setPage(list);
			model.addAttribute("page", page);
			return "category/categorys";
		} catch (Exception e) {
			logger.error("��ȡ�����ҳ��Ϣʧ�ܣ�" + e.getMessage());
			model.addAttribute("erro", "��ȡ�����ҳ��Ϣʧ�ܣ�");
			return "erro";
		}

	}

}
