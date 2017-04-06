package com.hic.service;

import com.hic.model.Sys_User;

public interface ISys_UserService extends IBaseService<Sys_User, String> {
	Sys_User queryByName(String name);
}
