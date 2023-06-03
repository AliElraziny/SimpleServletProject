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


<% String userName = request.getParameter("name"); 

	if(userName != null){
		
		session.setAttribute("sessionAttribute", userName);
		application.setAttribute("appAttribute", userName);
		pageContext.setAttribute("pgContextAtt", userName);
		pageContext.setAttribute("pgContextAttSession", userName,pageContext.SESSION_SCOPE);
		
		
		
	}
%>

<br />

The user Name in request object is <%=userName %>

<br />
The user Name in session object is <%=session.getAttribute("sessionAttribute") %>
<br />
The user Name in application object is <%=application.getAttribute("appAttribute") %>

<br />
The user Name in page Context object is <%=pageContext.getAttribute("pgContextAtt") %>

<br />
The user Name in page Context object is <%=pageContext.findAttribute("appAttribute") %>


</body>
</html>