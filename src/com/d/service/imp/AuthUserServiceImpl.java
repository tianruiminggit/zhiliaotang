package com.d.service.imp;

import org.springframework.stereotype.Service;

import com.d.service.AuthUserService;
/*����serviceע��*/
@Service
public class AuthUserServiceImpl implements AuthUserService {

	@Override
	public void loginAuthUser() {
		System.out.println("����  ����service�е�loginAuthUser");
	}

}
