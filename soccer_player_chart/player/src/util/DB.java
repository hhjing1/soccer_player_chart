package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	private static String mysqlname = "database";//���ݿ���
	private static Connection con;
	private static Statement stm;
	private static ResultSet rs;
	private static String coursename = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/"+mysqlname+"?useUnicode=true&characterEncoding=GB18030&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
	
	public static Connection getCon() {
		try {
			Class.forName(coursename);
			System.out.println("ע�������ɹ�");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection(url,"root","20000604");
			System.out.println("�������ӳɹ�");
		}catch(Exception e){
			e.printStackTrace();
			con = null;
		}
		return con;
	}
	
	public static void close(Statement stm,Connection connection) {
		if(stm!=null) {
			try {
				stm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(connection!=null) {
			try {
				connection.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
		
	//�ر�
	public static void close(ResultSet rs,Statement stm,Connection connection) {
		if(rs!=null) {
			try {
				rs.close();
			}catch(SQLException e) {
			e.printStackTrace();
			}
		}
		if(stm!=null) {
			try {
				stm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(connection!=null) {
			try {
				connection.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public static void main(String[] args)
	{
		getCon();
	}
	
	
}
