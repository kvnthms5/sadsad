<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	try {		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orkut","root","root");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT id,password FROM users where id='"+userid+"';");		
		if (rs.next()== false) {
			System.out.println("Login error. No user found.");
			%>
			<jsp:include page="Login.jsp" />
			<span style="color: #f02849; font-family: Arial, Helvetica, sans-serif; position: absolute; top: 470px; left: 287px;">The user id you entered is incorrect.</span>
  			<a href="#" style="color: #f02849; font-family: Arial, Helvetica, sans-serif; font-weight: 600; position: absolute; top: 490px; left: 287px;">Find your account.</a>		
			<%
		}
		else {
			do {
				if (userid.equals(rs.getString("id")) && password.equals(rs.getString("password"))) {
					System.out.println("Logged in");
					%>
					<jsp:forward page="HomePage.jsp">  
					<jsp:param name="userid" value="<%=userid%>" />
					</jsp:forward> 
					<%						
				}
				else {
					System.out.println("Login error. Wrong password");
					%>
					<jsp:include page="Login.jsp" />
					<span style="color: #f02849; font-family: Arial, Helvetica, sans-serif; position: absolute; top: 470px; left: 287px;">The password that you've entered is incorrect.</span>
  					<a href="#" style="color: #f02849; font-family: Arial, Helvetica, sans-serif; font-weight: 600; position: absolute; top: 490px; left: 287px;">Forgotten password?</a>
					<%
				}					
			}
			while (rs.next());
		}
		con.close();
	}
	catch (Exception e) {
		System.out.println(e);
	}
%>