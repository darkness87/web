package com.human.finalpjt.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.finalpjt.dto.BoardVO;
import com.human.finalpjt.util.DBManager;

/**
 * Servlet implementation class studentCode
 */
//@WebServlet("/studentCode")
public class studentCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String sdepartment =request.getParameter("sdepartment");
		String years = request.getParameter("year");
		PrintWriter out = response.getWriter();
		
	      String sql = "select board_seq2.nextval sequence from testtable";
	            
	      		List<BoardVO> list = new ArrayList<BoardVO>();
	            Connection conn = null;
	            Statement stmt = null;
	            ResultSet rs = null;
	            
	            try {
	               conn = DBManager.getConnection();
	               stmt = conn.createStatement();
	               System.out.println(sql);
	               rs = stmt.executeQuery(sql);
	               
	               while(rs.next()) {
	            	   BoardVO bVo = new BoardVO();
	            	   bVo.setSquence(rs.getInt("sequence"));
	            	   list.add(bVo);
	            	   out.print(years+'0'+sdepartment+rs.getInt("sequence"));
	               }
	            }catch(Exception e) {
	               e.printStackTrace();
	            }finally {
	               DBManager.close(conn, stmt, rs);
	            }
//	     out.print(years+'0'+sdepartment);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
