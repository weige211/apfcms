package com.hic.controller;

import hic.system.common.dto.LoginDto;
import hic.system.common.dto.ModelView;
import hic.system.common.dto.UserDto;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.hic.model.Sys_Role;
import com.hic.model.Sys_User;
import com.hic.service.ISys_RoleService;
import com.hic.service.ISys_UserService;
import com.hic.common.StringUtil;

@Controller
@RequestMapping("/admin/user")
public class UserController {

	private static Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Resource
	private ISys_UserService userService = null;
	@Resource
	private ISys_RoleService roleService = null;

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String index(HttpSession session,Model model){
		String user=session.getAttribute("username").toString();
		if(user!=null&&user!=""){
			List<Sys_User> list = userService.getAll();
			model.addAttribute("list", list);
			return "user/users";
		}else{
			return "user/Login";
		}
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody
	ModelView<String> Login(@RequestBody LoginDto ldto, HttpSession session) {
		String username = ldto.getUsername();
		String password = StringUtil.getMD5(ldto.getPassword());
		ModelView<String> v = new ModelView<String>();
		v.setStatus("ok");
		// v.setData(ldto.getUsername());
		Sys_User user = userService.queryByName(username);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				// String md5=MD5Util.getMD5(username);
				session.setAttribute("username", user.getUsername());
				session.setAttribute("uid", user.getUid());
				v.setStatus("ok");
				v.setSuccess("��¼�ɹ���");
			} else {
				v.setStatus("erro");
				v.setErro("�û����������벻��ȷ��");
			}
		} else {
			v.setStatus("erro");
			v.setErro("�û�����ڣ�");
		}

		return v;
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String getAllUsers(Model model) {
		try {
			List<Sys_User> list = userService.getAll();
			model.addAttribute("list", list);
			return "user/users";
		} catch (Exception e) {
			logger.error("��ȡ�û��б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�û��б�ʧ�ܣ�");
			return "erro";
		}

	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddUserInfo(Sys_User user) {
		return "user/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addUserInfo(UserDto u, HttpSession session, Model model) {
		try {
			Sys_User user = new Sys_User();
			String guid = StringUtil.getGuid();
			user.setUid(guid);
			user.setUsername(u.getUsername());
			user.setAddress(u.getAddress());
			user.setEmail(u.getEmail());

			String pwd = StringUtil.getMD5(u.getPassword());
			user.setPassword(pwd);

			user.setPhone(u.getPhone());
			user.setRemark(u.getRemark());

			user.setCreatetime(new Date());
			user.setCreateuser(session.getAttribute("username").toString());// ���õ�ǰ��¼��Ϊ������
			userService.add(user);
			List<Sys_User> list = userService.getAll();
			model.addAttribute("list", list);
			return "user/users";
		} catch (Exception e) {
			logger.error("����û���Ϣʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "����û���Ϣʧ�ܣ�");
			return "erro";
		}

	}

	@RequestMapping(value = "/{uid}/update", method = RequestMethod.GET)
	public String getUpdateUserInfo(@PathVariable(value = "uid") String uid,
			Model model) {
		// userInfoService.updateUserInfo(u)
		try {
			Sys_User u = userService.getByID(uid);
			List<Sys_Role> r = roleService.getAll();
			model.addAttribute("user", u);
			model.addAttribute("roles", r);
			return "user/update";
		} catch (Exception e) {
			logger.error("��ȡ�û�������Ϣʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "��ȡ�û�������Ϣʧ�ܣ�");
			return "erro";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateUserInfo(UserDto u, HttpSession session, Model model) {
		try {
			// UserDto user=new UserDto();
			Sys_User user = new Sys_User();
			user.setUid(u.getUid());
			user.setUsername(u.getUsername());
			user.setAddress(u.getAddress());
			user.setEmail(u.getEmail());
			// user.setPassword(u.getPassword());
			user.setPhone(u.getPhone());
			user.setRemark(u.getRemark());

			user.setRid(u.getRid());
			// Date d=new Date();
			// d.getTimezoneOffset()
			// SimpleDateFormat df = new
			// SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			// String now=df.format(d);
			user.setUpdatetime(new Date());// ���ô���ʱ��Ϊ��ǰʱ��
			user.setUpdateuser(session.getAttribute("username").toString());// ���õ�ǰ��¼��Ϊ������

			userService.modifyByKey(user);
		} catch (Exception e) {
			logger.error("�����û���Ϣʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "�����û���Ϣʧ�ܣ�");
			return "erro";
		}
		try {
			List<Sys_User> list = userService.getAll();
			model.addAttribute("list", list);
			return "user/users";
		} catch (Exception e) {
			logger.error("�����û���Ϣ�ɹ�����ȡ�û���Ϣ�б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "�����û���Ϣ�ɹ�����ȡ�û���Ϣ�б�ʧ�ܣ�");
			return "erro";
		}

	}

	@RequestMapping(value = "{uid}/resetpwd", method = RequestMethod.GET)
	public @ResponseBody
	ModelView<String> resetPwd(@PathVariable(value = "uid") String uid,
			HttpSession session, Model model) {
		ModelView<String> mv = new ModelView<String>();
		try {
			String password = StringUtil.getMD5("hic123");// "hic123";
			Sys_User u = new Sys_User();
			u.setUid(uid);
			u.setUpdatetime(new Date());
			u.setUpdateuser(session.getAttribute("username").toString());
			u.setPassword(password);
			userService.modifyByKey(u);
			mv.setStatus("ok");
			mv.setSuccess("�������óɹ���");
			return mv;
		} catch (Exception e) {
			logger.error("��������ʧ�ܣ�����" + e.getMessage());
			mv.setStatus("erro");
			mv.setSuccess("��������ʧ�ܣ�");
			return mv;
		}
	}

	@RequestMapping(value = "{uid}/del", method = RequestMethod.GET)
	public String delUserInfo(@PathVariable(value = "uid") String uid,
			Model model) {
		try {
			userService.delByKey(uid);
		} catch (Exception e) {
			logger.error("ɾ���û���Ϣʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ���û���Ϣʧ�ܣ�");
			return "erro";
		}
		try {
			List<Sys_User> list = userService.getAll();
			model.addAttribute("list", list);
			return "user/users";
		} catch (Exception e) {
			logger.error("ɾ���û���Ϣ�ɹ�����ȡ�û���Ϣ�б�ʧ�ܣ�����" + e.getMessage());
			model.addAttribute("erro", "ɾ���û���Ϣ�ɹ�����ȡ�û���Ϣ�б�ʧ�ܣ�");
			return "erro";
		}

	}

	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signOut(HttpSession session) {
		session.removeAttribute("username");
		session.removeAttribute("uid");
		return "user/Login";
	}

}
