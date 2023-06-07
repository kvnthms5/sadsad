<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>		
<%--		<jsp:useBean id="myBean" class="beanpackage.Beanclass">
			<jsp:setProperty name="myBean" property="userid" value='<%=request.getParameter("userid")%>' />
			<jsp:setProperty name="myBean" property="password" value='<%=request.getParameter("password")%>' />
			</jsp:useBean>	
			
			<h1><jsp:getProperty name="myBean" property="userid" /></h1>
			<h1><jsp:getProperty name="myBean" property="password" /></h1>
--%>
			<c:import var="data" url="http://www.javatpoint.com"/>  
<c:out value="${data}"/>  

</body>
</html>