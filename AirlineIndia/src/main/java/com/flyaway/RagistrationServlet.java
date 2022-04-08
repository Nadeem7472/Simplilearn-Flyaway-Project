package com.flyaway;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RagistrationServlet")
public class RagistrationServlet extends HttpServlet{
	
	String userName,password,url,driver;
	Connection con;
	ServletContext context;
	PreparedStatement pst;
	public void init(ServletConfig config) throws ServletException {
		
		context = config.getServletContext();
		
		userName = context.getInitParameter("userName");
		password = context.getInitParameter("password");
		url = context.getInitParameter("url");
		driver = context.getInitParameter("driver");
		
		
		try {
			//loading the driver
			Class.forName(driver);
			//creating the connection 
			con=DriverManager.getConnection(url, userName, password);
			
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		String user_Name = req.getParameter("name");
		String user_Email = req.getParameter("email");
		String user_Password = req.getParameter("password");
		String user_Phone = req.getParameter("number");
		
		try {
			pst = con.prepareStatement("insert into userflyaway values(?,?,?,?)");
			
			pst.setString(1,user_Email);
			pst.setString(2,user_Password);
			pst.setString(3,user_Name);
			pst.setString(4,user_Phone);
			
			int count = pst.executeUpdate();
			System.out.println(count);
			
			if(count>0)
			{
				resp.getWriter().write("<script>alert('Registration Successful !');"
						+ "window.location.href='index.jsp';</script>");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
}
