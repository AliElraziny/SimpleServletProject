package com.trycoding;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class XmlServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("another servlet ");
		PrintWriter out =response.getWriter();
		out.print(" Another XML servlet agaaiiiiiiin  Get method!!!! ");
		
		String name = request.getParameter("username");
		
		HttpSession session = request.getSession();
		
		if(name !="" && name!=null) {
			
			session.setAttribute("sessionName", name);
		}
		
		
		
		out.print(" Another XML servlet agaaiiiiiiin !!!! the name is : "+name + "  " + " Session "+(String) session.getAttribute("sessionName")  );
		
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType( "text/html" );
		System.out.println("another servlet ");
		
		PrintWriter out =response.getWriter();
		out.print(" <h3>Another XML servlet agaaiiiiiiin  Post method!!!</h3> ");
		
		String userName = request.getParameter("username");
		String fullName = request.getParameter("fullname");
		String theProf = request.getParameter("prof");
		
		//for get more than one value from parameters 
		String[] locations = request.getParameterValues("location");
		
		out.println("User Name is : "+userName +  "  Full Name is : "+fullName  );
		out.println(" and prfo is : " +theProf );
		
		//print selection value 
		for(int i =0 ; i<locations.length;i++) {
			
			out.println("location " + i +"  " +locations[i]);
		}
		
		
		
		
	}

}
