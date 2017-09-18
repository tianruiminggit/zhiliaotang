package com.d.service.imp;

import org.springframework.stereotype.Service;

import com.d.service.AuthUserService;
/*加入service注解*/
@Service
public class AuthUserServiceImpl implements AuthUserService {

	@Override
	public void loginAuthUser() {
		System.out.println("测试  进入service中的loginAuthUser");
	}

}
