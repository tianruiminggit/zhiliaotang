package com.dailiantong.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.dailiantong.util.DbConnection;

/**
 * 帮助我们获取数据库连接对象
 * 帮助我们去关闭数据库连接对象
 * 1.数据库连接池
 * 2.获取数据库连接池的设计模式（单列模式）
 * (1)获取一个类的对象时候是唯一不可变，比如：DbConnection的对象
 * (2)在类中会定义一个全局对象，此对象私有且静态
 * (3)定义此类的构造方法，且构造方法私有
 * (4)定义一个静态且共有的方法，此方法返回该类的对象
 * 3.c3p0数据库连接池
 * (1)创建配置c3p0-config.xml,记录数据库连接的信息,如：用户名...
 * (2)创建javax.sql.DataSource数据源,发送Connection连接对象
 * (3)初始化javax.sql.DataSource数据源的对象通过c3p0组件了完成
 * (4)什么DataSource数据源，包含数据库连接信息，只有得到这些连接信息才能启动数据源。快速理解 DataSource --> MySQL
 * @author caleb
 *
 */

public class DbConnection {
	private static DbConnection dbConnection;
	private static DataSource ds;
	
	private DbConnection() {
		ds = new ComboPooledDataSource(); //ComboPooledDataSource类是cp30.jar里面的类
	}
	
	private static DbConnection getInstance() {
		if(dbConnection == null) {
			dbConnection =  new DbConnection(); //首先定义全局对象,因为构造方法被private,直接会影响其他测试类无法调用此类的构造方法
		}
		return dbConnection;
	}
	
	public static Connection getConnection() throws SQLException {
		getInstance();
		return ds.getConnection();
	}
	
	public static void closeConnection(Connection conn) throws SQLException {
		if (conn != null) {
			conn.close();
		}
	}
}
