package com.human.finalpjt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class SDao {
	private String s_id;
	private String s_pwd;

	boolean isNum = true;
	
	DataSource ds=null;
	
	public SDao() {
	      try {
	    	  
	          Context cxt = new InitialContext();
	          ds = (DataSource) cxt.lookup("java:comp/env/jdbc/Oracle11g");
	          System.out.println(ds);
	       } catch (NamingException e) {
	          // TODO Auto-generated catch block
	          e.printStackTrace();
	       }
		}
	
	public ArrayList<String> login_verify(String splitID,String id,String pwd ) {
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		String name=null;
		String wid = null;
		ArrayList <String> list = new ArrayList<String>();
		String sql=null;
		try {
			conn=ds.getConnection();
			String prev = null;
			if(splitID.equals("no")) {
				//학생
				sql = "select * from student where s_id=? and s_pwd=?";
				prev = "s";
			}else if(splitID.equals("cs")) {
				//교수님
				sql = "select * from professor where p_id=? and p_pwd=?";
				prev = "p";
			}else if(splitID.equals("ad")) {
				//관리자
				sql = "select * from administer where a_id=? and a_pwd=?";
				prev = "a";
			} else {
				list.add("alert");
			}
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if(rs.next()) {
				name=rs.getString(prev+"_name");
				wid=rs.getString(prev+"_id");
				list.add(prev);      //0
				list.add(name); //index1
				list.add(wid); //      2
				System.out.println("s_id =" +wid);
			}else {
				list.add("alert");
			}	
		}catch(Exception e) {
			e.printStackTrace();
			list.add("alert");
		}finally {
			try {
				ps.close();
				conn.close();
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}			
		}
//		for(int i=0; i<list.size(); i++) {
//			System.out.println("list2는" +list.get(i));
//		}
		return list;
	}
	
	public ArrayList<Integer> stdInfoInput(int count) throws SQLException {
        
	       String sql = "select count(*) count from student where s_major='컴퓨터과학과'"; //sql문 조건 변경
	       ArrayList <Integer> Infolist = new ArrayList<Integer>();
	               Connection conn = null;
	               PreparedStatement ps=null;
	               ResultSet rs = null;
	               try {
	                  conn = ds.getConnection();
	                  ps = conn.prepareStatement(sql);
	                  System.out.println(sql);
	                  rs = ps.executeQuery();
	                 
	                  while(rs.next()) {
	                     count = rs.getInt("count");
	                     Infolist.add(count);
	                  }
	               }catch(Exception e) {
	                  e.printStackTrace();
	               }finally {
	                  conn.close();
	                  ps.close();
	                  rs.close();
	               }
	        return Infolist;
	   }
}
