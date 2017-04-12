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
import com.hic.model.Sys_User;
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
			logger.error("获取角色列表！" + e.getMessage());
			model.addAttribute("erro", "获取角色列表！");
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
			Sys_User oper=(Sys_User)session.getAttribute("user");
			role.setCreateuser(oper.getUsername());
			roleService.add(role);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("添加角色失败！" + e.getMessage());
			model.addAttribute("erro", "添加角色失败！");
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
			logger.error("获取更新失败！" + e.getMessage());
			model.addAttribute("erro", "获取更新失败！");
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
			Sys_User oper=(Sys_User)session.getAttribute("user");
			role.setCreateuser(oper.getUsername());
			roleService.modifyByKey(role);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "role/roles";
		} catch (Exception e) {
			logger.error("更新角色失败！" + e.getMessage());
			model.addAttribute("erro", "更新角色失败！");
			return "erro";
		}
	}

	@RequestMapping(value = "/{rid}/del", method = RequestMethod.GET)
	public String delRole(@PathVariable("rid") int rid, Model model) {
		try {
			roleService.delByKey(rid);
			List<Sys_Role> list = roleService.getAll();
			model.addAttribute("list", list);
			return "redirect:/admin/role/roles";
		} catch (Exception e) {
			logger.error("删除角色失败！" + e.getMessage());
			model.addAttribute("erro", "删除角色失败！");
			return "erro";
		}
	}
}
