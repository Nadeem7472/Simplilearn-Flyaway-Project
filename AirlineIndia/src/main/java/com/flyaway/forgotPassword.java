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

/**
 * Servlet implementation class forgotPassword
 */
@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {

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
			//System.out.println(con);
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

		String admin_Email = request.getParameter("admin_Email");
		String admin_Password = request.getParameter("admin_Password");
		System.out.println(admin_Email+":"+admin_Password);

		try {
			pst = con.prepareStatement("select ADMIN_EMAIL from ADMINLOGIN where ADMIN_EMAIL=? ");

			pst.setString(1,admin_Email);

			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				pst = con.prepareStatement("update ADMINLOGIN set ADMIN_PASSWORD=? where ADMIN_EMAIL=?");

				pst.setString(1,admin_Password);
				pst.setString(2,admin_Email);
				
				ResultSet rs2 =	pst.executeQuery();
				//System.out.println("jeeper");
				if(rs2.next())
				{
					
					response.getWriter().write("<script>alert('Password Updated Successfully :-)');"
							+ "window.location.href='adminLogin.jsp';</script>");
				}
				
				


			}
			else
			{
				System.out.println("Testing");
				response.getWriter().write("<script>alert('Invalid Email ID Go Back!');"
						+ "window.location.href='forgotPassword.jsp';</script>");
			}
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




	}

}
