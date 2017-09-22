package com.d.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.AuthUserDao;
import com.d.entity.AuthUser;
import com.d.service.AuthUserService;
/*����serviceע��*/

@Service
public class AuthUserServiceImpl implements AuthUserService {
	/*dao��ӿ��еĳ�����*/

	@Autowired
	private AuthUserDao authUserDao;
	
	@Override
	public void loginAuthUser() {
		System.out.println("����  ����service�е�loginAuthUser");
		List<AuthUser> list = authUserDao.getAuthUser();
		for(AuthUser authUser:list){
			System.out.println("�û�����"+authUser.getUser_name());
		}
	}

}
