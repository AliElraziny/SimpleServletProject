<?xml version="1.0" encoding="windows-1256" ?>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title>Insert title here</title>
</head>
<body>


	<h3>Testing </h3>
	
	<%
			int i =0;
			int y = 5 ; 
			int k = i+y ; 
			
			out.print("Value of K is  : "+ k);
	%>
	
	<h3>Let's do some thing </h3>
	
	<%!
	
	int p=0;
		public int sum (int c , int u ){
		
		return c+u ; 
	}
	
	%>
	
	<h2>Here you are your value !!! <%=sum(777,888) %> Then <%=p++ %> </h2> 
	
	<%! int v = 0; %>
	<%
	   out.print("");        
	   v++;
	   out.print("The value of i is now:  " + v);
	   out.print("");
	%>
	
	<% for(int m =0 ; m<10 ; m++){
		

	 %>
	 
	 <h2>Look at this ...> <%=m %></h2>
	 
	 <%} %>
</body>
</html>