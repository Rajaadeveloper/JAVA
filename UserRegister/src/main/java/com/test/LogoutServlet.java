package com.test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		
	Cookie c[]=req.getCookies();
	
		if(c==null) {
			req.setAttribute("msg","Sorry session expired..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
		ServletContext sct=req.getServletContext();
		
			sct.removeAttribute("ubean");
			c[0].setMaxAge(0);
			res.addCookie(c[0]);
			req.getRequestDispatcher("Logout.jsp").forward(req,res);
		}
		
	}
	
	


	
}
