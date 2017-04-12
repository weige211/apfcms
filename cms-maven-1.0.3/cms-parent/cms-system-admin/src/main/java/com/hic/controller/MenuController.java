package com.hic.controller;

import hic.system.common.dto.MenuDto;
import hic.system.common.dto.ModelView;
import hic.system.common.dto.Node;
import hic.system.common.util.ConvertUtl;

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
import org.springframework.web.bind.annotation.ResponseBody;


import com.hic.model.Sys_User;
import com.hic.model.Sys_menu;
import com.hic.service.ISys_menuService;


@Controller
@RequestMapping("/admin/menu")
public class MenuController {
	private static Logger logger = LoggerFactory
			.getLogger(MenuController.class);

	@Resource
	private ISys_menuService menuService = null;

	@RequestMapping(value = "/menus", method = RequestMethod.GET)
	public String getMenus(Model model) {
		return "menu/menus";
	}

	@RequestMapping(value = "/addroot", method = RequestMethod.GET)
	public String getAddRoot() {
		return "menu/addroot";
	}

	@RequestMapping(value = "/menus/trees", method = RequestMethod.GET)
	public @ResponseBody
	ModelView<List<Node>> getMenuTrees() {
		ModelView<List<Node>> vw = new ModelView<List<Node>>();
		// Node node=new Node();
		try {
			List<Sys_menu> list = this.menuService.getAll();
			//System.out.println("������" + list.size());
			List<Node> treelist = ConvertUtl.getChildNodes(0, list);
			vw.setStatus("ok");
			vw.setData(treelist);
			return vw;
		} catch (Exception e) {
			logger.error("��ȡ�˵��б�ʧ�ܣ�����" + e.getMessage());
			vw.setStatus("erro");
			vw.setErro("��ȡ�˵��б�ʧ�ܣ�");
			return vw;
		}
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
	public String updateMenu(@PathVariable(value = "id") int id, Model model) {
		try {
			Sys_menu sysmenu = this.menuService.getByID(id);
			MenuDto menu = new MenuDto();
			menu.setMenuname(sysmenu.getMenuname());
			menu.setMid(sysmenu.getMid());
			menu.setParid(sysmenu.getParid());
			menu.setRemark(sysmenu.getRemark());
			menu.setUrl(sysmenu.getUrl());
			menu.setType(sysmenu.getType());
			model.addAttribute("menu", menu);
			return "menu/update";
		} catch (Exception e) {
			logger.error("��ȡ�˵��������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�˵��������ʧ�ܣ�����" + e.getMessage());
			return "erro";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateMenu(MenuDto dto, HttpSession session, Model model) {
		try {
			Sys_menu menu = new Sys_menu();
			menu.setMenuname(dto.getMenuname());
			menu.setMid(dto.getMid());
			menu.setParid(dto.getParid());
			menu.setRemark(dto.getRemark());
			menu.setUrl(dto.getUrl());
			menu.setType(dto.getType());

			menu.setUpdatetime(new Date());
			Sys_User oper=(Sys_User)session.getAttribute("user");
			menu.setCreateuser(oper.getUsername());

			this.menuService.modifyByKey(menu);
			return "menu/menus";
		} catch (Exception e) {
			logger.error("���²˵����ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "���²˵�ʧ�ܣ�����" + e.getMessage());
			return "erro";
		}
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addMenu() {
		return "menu/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addMenu(MenuDto dto, HttpSession session, Model model) {
		try {
			Sys_menu menu = new Sys_menu();
			menu.setMenuname(dto.getMenuname());
			menu.setMid(dto.getMid());
			menu.setParid(dto.getParid());
			menu.setRemark(dto.getRemark());
			menu.setUrl(dto.getUrl());
			menu.setType(dto.getType());

			menu.setCreatetime(new Date());
			Sys_User oper=(Sys_User)session.getAttribute("user");
			menu.setCreateuser(oper.getUsername());
			this.menuService.add(menu);
			// model.addAttribute("menuid", menuid);
			return "menu/menus";
		} catch (Exception e) {
			logger.error("��Ӳ˵����ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��Ӳ˵�ʧ�ܣ�����" + e.getMessage());
			return "erro";
		}
	}

	@RequestMapping(value = "/{id}/del", method = RequestMethod.GET)
	public String delMenu(@PathVariable(value = "id") int id, Model model) {
		try {
			this.menuService.delByKey(id);
			// model.addAttribute("menuid", menuid);
			return "redirect:/admin/menu/menus";
		} catch (Exception e) {
			logger.error("ɾ��˵����ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ��˵�ʧ�ܣ�����" + e.getMessage());
			return "erro";
		}
	}
}
