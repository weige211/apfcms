package com.hic.controller;

import hic.system.common.dto.Cms_ArticleDto;
import hic.system.common.dto.ModelView;
import hic.system.common.dto.PageInfoDto;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.hic.model.Cms_Article;
import com.hic.model.Cms_Category;

import com.hic.service.ICms_ArticleService;
import com.hic.service.ICms_CategoryService;

@Controller
@RequestMapping("/admin/article")
public class ArticleController {
	private static Logger logger = LoggerFactory
			.getLogger(ArticleController.class);

	@Resource
	private ICms_ArticleService service = null;
	
	@Resource
	private ICms_CategoryService cateservice = null;

	private int pageSize = 5;

	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String getAll(Model model) {
		try {
			List<Cms_Article> list = service.getAll();
			model.addAttribute("list", list);
			return "article/articles";
		} catch (Exception e) {
			logger.error("��ȡ�����б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�����б�ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAdd(Model model) {
		List<Cms_Category> list=cateservice.getAll();
		model.addAttribute("list", list);
		return "article/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Cms_ArticleDto dto, HttpSession session, Model model) {
		try {
			Cms_Article entity = new Cms_Article();
			entity.setAuthor(session.getAttribute("username").toString());
			entity.setCid(dto.getCid());
			entity.setContent(dto.getContent());
			entity.setSummary(dto.getSummary());
			entity.setTitle(dto.getTitle());
			entity.setType(dto.getType());
			entity.setRemark(dto.getRemark());
			entity.setImgurl(dto.getImgurl());

			entity.setCreatetime(new Date());
			entity.setCreateuser(session.getAttribute("username").toString());
			service.add(entity);
//			List<Cms_Article> list = service.getAll();
//			model.addAttribute("list", list);
//			return "article/articles";
			return "redirect:articles/1/page";
		} catch (Exception e) {
			logger.error("�������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "�������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
	public String getUpdate(@PathVariable("id") int id, Model model) {
		try {
			Cms_Article entity = service.getByID(id);
			
			List<Cms_Category> list=cateservice.getAll();
			model.addAttribute("list", list);
			model.addAttribute("entity", entity);
			return "article/update";
		} catch (Exception e) {
			logger.error("��ȡ���¸������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ���¸������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Cms_ArticleDto dto, HttpSession session, Model model) {
		try {
			Cms_Article entity = new Cms_Article();
			entity.setAid(dto.getAid());
			entity.setAuthor(dto.getAuthor());
			entity.setCid(dto.getCid());
			entity.setContent(dto.getContent());
			entity.setSummary(dto.getSummary());
			entity.setTitle(dto.getTitle());
			entity.setType(dto.getType());
			entity.setRemark(dto.getRemark());
			entity.setImgurl(dto.getImgurl());

			//System.out.println("DTo:"+dto.getContent());
			entity.setUpdatetime(new Date());
			entity.setUpdateuser(session.getAttribute("username").toString());
			service.modifyByKey(entity);
//			List<Cms_Article> list = service.getAll();
//			model.addAttribute("list", list);
			return "redirect:articles/1/page";
		} catch (Exception e) {
			logger.error("���¸������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "���¸������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{id}/del", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, Model model) {
		try {
			service.delByKey(id);
//			List<Cms_Article> list = service.getAll();
//			model.addAttribute("list", list);
//			return "article/articles";
			return "redirect:articles/1/page";
		} catch (Exception e) {
			logger.error("ɾ���������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ���������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/articles/{nowPage}/page", method = RequestMethod.GET)
	public String getPage(@PathVariable(value = "nowPage") int nowPage,
			Model model) {
		try {
			int start = (nowPage - 1) * pageSize;
			int c = service.getCount();
			double num = (double) c / this.pageSize;
			Double d_s = new Double(Math.ceil(num));
			int count = d_s.intValue();
			List<Cms_Article> list = service.getPage("", start, this.pageSize);
			PageInfoDto<Cms_Article> page = new PageInfoDto<Cms_Article>();
			page.setCount(count);
			page.setNowPage(nowPage);
			page.setPageSize(this.pageSize);
			page.setPage(list);
			model.addAttribute("page", page);
			return "article/articles";
		} catch (Exception e) {
			logger.error("��ȡ���·�ҳ��Ϣʧ�ܣ�" + e.getMessage());
			model.addAttribute("erro", "��ȡ��Ϣ��ҳ��Ϣʧ�ܣ�");
			return "erro";
		}

	}
	
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody ModelView<String> upload(@RequestParam("file") MultipartFile tmpFile,HttpServletRequest request) {

		ModelView<String> v=new ModelView<String>();
		if (tmpFile != null) {

			// ��ȡ����·��

			String targetDirectory = request.getSession().getServletContext()
					.getRealPath("/uploads");

			String tmpFileName = tmpFile.getOriginalFilename(); // �ϴ����ļ���

			int dot = tmpFileName.lastIndexOf('.');

			String ext = ""; // �ļ���׺��

			if ((dot > -1) && (dot < (tmpFileName.length() - 1))) {

				ext = tmpFileName.substring(dot + 1);
			}

			// �����ļ���ʽ������

			if ("png".equalsIgnoreCase(ext) || "jpg".equalsIgnoreCase(ext)
					|| "gif".equalsIgnoreCase(ext)) {

				// �������ϴ����ļ���

				String targetFileName = com.hic.common.FileUtil.renameFileName(tmpFileName);

				// ��������ļ�

				File target = new File(targetDirectory, targetFileName);
				if (target.exists()) {
					target.mkdir();
				}

				try {

					tmpFile.transferTo(target); // �����ļ�				
					v.setStatus("ok");
					v.setData(targetFileName);
					//p.setImg(targetFileName);
				} catch (IOException e) {
					//e.printStackTrace();
					logger.error("�ϴ�ʧ�ܣ�"+e.getMessage());
					v.setErro("erro");
					v.setErro("�ϴ�ʧ�ܣ�");
				}
			}
		}
		return v;
	}
}
