<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	try {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String userid = request.getParameter("userid");
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orkut","root","root");
		Statement stmt1=con.createStatement();
		ResultSet rs1=stmt1.executeQuery("SELECT id FROM users where id='"+userid+"';");
		if (rs1.next()!= false) {
			System.out.println("User not added. User id already exists.");
			%>
			<jsp:include page="RegistrationWrongUserID.jsp" />		
			<%
		}
		else {
			PreparedStatement stmt=con.prepareStatement("insert into users (id,password,firstname,lastname,emailid) values ('"+userid+"','"+password+"','"+firstname+"','"+lastname+"','"+emailid+"');");
			int i=stmt.executeUpdate();
			if (i==1){
				System.out.println("User added");
				response.sendRedirect("Login.jsp");
			}	
		}
		
		con.close();
	}
	catch (Exception e) {
		System.out.println(e);
	}
%>