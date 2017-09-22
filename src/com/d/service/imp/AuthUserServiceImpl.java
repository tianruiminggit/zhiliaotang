package com.d.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.AuthUserDao;
import com.d.entity.AuthUser;
import com.d.service.AuthUserService;
/*加入service注解*/

@Service
public class AuthUserServiceImpl implements AuthUserService {
	/*dao层接口中的抽象类*/

	@Autowired
	private AuthUserDao authUserDao;
	
	@Override
	public void loginAuthUser() {
		System.out.println("测试  进入service中的loginAuthUser");
		List<AuthUser> list = authUserDao.getAuthUser();
		for(AuthUser authUser:list){
			System.out.println("用户姓名"+authUser.getUser_name());
		}
	}

}
