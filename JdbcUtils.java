package com.dailiantong.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;



public abstract class JdbcUtils {
	
	/**
	 * 单表查询单条结果
	 * @param sql
	 * @param type
	 * @param objects
	 * @return
	 */
	public <T>T getBean(String sql,Class<T>type,Object...objects ){
		T t = null;
		Connection conn = null;
		QueryRunner queryRunner = new QueryRunner();
		try {
			conn = DbConnection.getConnection();
			t = queryRunner.query(conn, sql, new BeanHandler<>(type),objects);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(conn != null)
				try {
					DbConnection.closeConnection(conn);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			
		}
		return t;
	}
	public int updataAll(String sql, Object...objects){
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = null;
		int i = 0;
		try {
			conn = DbConnection.getConnection();
			i = queryRunner.update(conn,sql, objects);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(conn != null){
				try {
					DbConnection.closeConnection(conn);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return i;
		
	}
	

	/**
	 * 带条件的单表的多条记录
	 * @param sql
	 * @param type
	 * @param objects
	 * @return
	 */
	public <T> List<T> getList(String sql, Class<T> type, Object...objects) {
		Connection conn=null;
		QueryRunner queryRunner = new QueryRunner();
		
		List<T> list = new ArrayList<T>();
		try {
			conn= DbConnection.getConnection();
			list = (List<T>) queryRunner.query(conn, sql, new BeanListHandler<>(type),objects);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (conn != null) {
				try {
					DbConnection.closeConnection(conn); //关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	
	/**
	 * 多表带条件查询一条记录
	 * @param sql
	 * @param objects
	 * @return
	 */
	public Map<String,Object> getMap(String sql, Object...objects ) {
		Connection conn = null;
		QueryRunner queryRunner = new QueryRunner();
		Map<String,Object> map = new HashMap<>();
		try {
			conn = DbConnection.getConnection();
			map = queryRunner.query(conn, sql, new MapHandler(), objects);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					DbConnection.closeConnection(conn); //关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return map;
	}
	
	
	/**
	 * 多表查询多条记录
	 * @param sql
	 * @param objects
	 * @return
	 */
	public List<Map<String,Object>> getListMap(String sql, Object...objects ) {
		Connection conn = null;
		QueryRunner queryRunner = new QueryRunner();
		List<Map<String,Object>> list = new ArrayList<>();
		try {
			conn = DbConnection.getConnection();
			list = queryRunner.query(conn, sql, new MapListHandler(), objects);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					DbConnection.closeConnection(conn); //关闭连接
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	

}
	
	
	




