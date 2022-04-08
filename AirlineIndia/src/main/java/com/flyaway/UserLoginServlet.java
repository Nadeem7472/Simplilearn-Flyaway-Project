package com.flyaway;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {

	Connection con;
	PreparedStatement pst;
	
	ServletContext context;
	String userName,password,url,driver;
	
	@Override
		public void init(ServletConfig config) throws ServletException {
			
			context = config.getServletContext();
			userName = context.getInitParameter("userName");
			password = context.getInitParameter("password");
			url = context.getInitParameter("url");
			driver = context.getInitParameter("driver");
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, userName, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			
			
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_Email = request.getParameter("userEmail");
		String user_Password  = request.getParameter("password");
		

		
		try {
			pst = con.prepareStatement("select USER_EMAIL from userflyaway where USER_EMAIL=? and USER_PASSWORD=? ");
			pst.setString(1,user_Email);
			pst.setString(2,user_Password);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				HttpSession session = request.getSession();
				
				session.setAttribute("userEmail",user_Email);
				
				response.sendRedirect("listFlight");
			}
			else
			{
				response.getWriter().write("<script>alert('INVALID CREDENTIALS PLEASE GO BACK !');"
						+ "window.location.href='index.jsp';</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
