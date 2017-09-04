package com.dailiantong.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.dailiantong.util.DbConnection;

/**
 * �������ǻ�ȡ���ݿ����Ӷ���
 * ��������ȥ�ر����ݿ����Ӷ���
 * 1.���ݿ����ӳ�
 * 2.��ȡ���ݿ����ӳص����ģʽ������ģʽ��
 * (1)��ȡһ����Ķ���ʱ����Ψһ���ɱ䣬���磺DbConnection�Ķ���
 * (2)�����лᶨ��һ��ȫ�ֶ��󣬴˶���˽���Ҿ�̬
 * (3)�������Ĺ��췽�����ҹ��췽��˽��
 * (4)����һ����̬�ҹ��еķ������˷������ظ���Ķ���
 * 3.c3p0���ݿ����ӳ�
 * (1)��������c3p0-config.xml,��¼���ݿ����ӵ���Ϣ,�磺�û���...
 * (2)����javax.sql.DataSource����Դ,����Connection���Ӷ���
 * (3)��ʼ��javax.sql.DataSource����Դ�Ķ���ͨ��c3p0��������
 * (4)ʲôDataSource����Դ���������ݿ�������Ϣ��ֻ�еõ���Щ������Ϣ������������Դ��������� DataSource --> MySQL
 * @author caleb
 *
 */

public class DbConnection {
	private static DbConnection dbConnection;
	private static DataSource ds;
	
	private DbConnection() {
		ds = new ComboPooledDataSource(); //ComboPooledDataSource����cp30.jar�������
	}
	
	private static DbConnection getInstance() {
		if(dbConnection == null) {
			dbConnection =  new DbConnection(); //���ȶ���ȫ�ֶ���,��Ϊ���췽����private,ֱ�ӻ�Ӱ�������������޷����ô���Ĺ��췽��
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
