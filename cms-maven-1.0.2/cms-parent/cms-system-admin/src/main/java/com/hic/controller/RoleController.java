package com.hic.controller;

import hic.system.common.dto.RoleDto;

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

import com.hic.model.Sys_Role;
import com.hic.service.ISys_RoleService;

@Controller
@RequestMapping(value = "/admin/role")
public class RoleController {

	private static Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Resource
	private ISys_RoleService roleService = null;

	@RequestMapping(value = "/roles", method = RequestMethod.GET)
	public String getAllRoles(Model model) {
		try {
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("��ȡ��ɫ�б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ��ɫ�б�ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddRole() {
		return "role/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addRole(RoleDto dto, HttpSession session, Model model) {
		try {
			Sys_Role role = new Sys_Role();
			role.setRolename(dto.getRolename());
			role.setRemark(dto.getRemark());

			role.setCreatetime(new Date());
			role.setCreateuser(session.getAttribute("username").toString());
			roleService.add(role);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("��ӽ�ɫʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ӽ�ɫʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{rid}/update", method = RequestMethod.GET)
	public String getupdateRole(@PathVariable("rid") int rid, Model model) {
		try {
			Sys_Role role = roleService.getByID(rid);
			model.addAttribute("role", role);
			return "role/update";
		} catch (Exception e) {
			logger.error("��ȡ��ɫ�������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ��ɫ�������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateRole(RoleDto dto, HttpSession session, Model model) {
		try {
			Sys_Role role = new Sys_Role();
			role.setRid(dto.getRid());
			role.setRolename(dto.getRolename());
			role.setRemark(dto.getRemark());

			role.setUpdatetime(new Date());
			role.setUpdateuser(session.getAttribute("username").toString());
			roleService.modifyByKey(role);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("��ɫ�������ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ɫ�������ʧ�ܣ�");
			return "erro";
		}
	}

	@RequestMapping(value = "/{rid}/del", method = RequestMethod.GET)
	public String delRole(@PathVariable("rid") int rid, Model model) {
		try {
			roleService.delByKey(rid);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("ɾ���ɫ���ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ���ɫ���ʧ�ܣ�");
			return "erro";
		}
	}
}
