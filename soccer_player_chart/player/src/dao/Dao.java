package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import entity.Bean;
import util.DB;

public class Dao {
	
	//添加球队赛事信息
	public boolean add(Bean bean) {
		String tablename = "player";//表名
		DB db=new DB();
		Connection con = db.getCon();
		
		try {
			String sql="insert into "+tablename+"(id,name,win,lose) values ('"+bean.getId()+"','"+bean.getName()+"','"+bean.getWin()+"','"+bean.getLose()+"')";
			//编译sql语句
			Statement stm = con.createStatement();
			System.out.println(sql);
			//执行sql语句
			stm.execute(sql);
			db.close(stm, con);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("add false");
			return false;
		}
		System.out.println("add true");
		return true;
	}
	
	//根据名称进行查询
		@SuppressWarnings("static-access")
		public static Bean selectName(String name) {
			String tablename = "player";
			Bean bean=null;
			DB db=new DB();
			Connection con = db.getCon();
			try {
				Statement stm = con.createStatement();
				//閿熸枻鎷烽敓鏂ゆ嫹value1=name閿熸枻鎷烽敓鏂ゆ嫹閿熸嵎锝忔嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓琛楄鎷烽敓鏂ゆ嫹閿熸枻鎷�
				ResultSet rs = stm.executeQuery("select * from "+tablename+" where name='" + name + "'");
				/*
				 * 閿熸枻鎷烽敓鏂ゆ嫹value1=name閿熸枻鎷烽敓鏂ゆ嫹閿熸嵎锝忔嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹value3閿熸枻鎷烽敓琛楄鎷烽敓鏂ゆ嫹閿熸枻鎷�
				 * ResultSet rs =stm.executeQuery("select value3 from "+tablename+" where value2="+i);
				 */
				if(rs.next())
				{
					bean = new Bean();
					bean.setId(rs.getInt("id"));
					bean.setName(rs.getString("name"));
					bean.setWin(rs.getInt("win"));
					bean.setLose(rs.getInt("lose"));
					//bean.setValue2(Integer.parseInt(rs.getString("teacher")));
			    	//bean.setValue3(Boolean.parseBoolean(rs.getString("address")));
				}
				db.close(rs,stm, con);
			}catch(Exception e) {
				e.printStackTrace();
			}
			return bean;
		}
	
	//全部浏览球队赛事信息
	 public ArrayList<Bean> getAll(){
	    	Connection con=null;
			PreparedStatement stm=null;
			ResultSet rs=null;
			ArrayList<Bean> listbean=new ArrayList<Bean>();
			String tablename="player";
			DB db=new DB();
			try {
				con=db.getCon();
				String sql="select * from "+tablename;
				stm=con.prepareStatement(sql);
				rs=stm.executeQuery();
				while(rs.next()){
				    int id=rs.getInt("id");
					String name=rs.getString("name");
					int win=rs.getInt("win");
					int lose=rs.getInt("lose");
					Bean bean=new Bean(id,name,win,lose);
					listbean.add(bean);
					
				}
			} 
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				db.close(stm, con);
			}
			return listbean;
	    }
}
