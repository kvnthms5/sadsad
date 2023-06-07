<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orkut - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        .navbar-dark .nav-item .nav-link {
            color: #fff;
        }

        .navbar-dark .nav-item .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
            border-radius: 0.25rem;
            color: #fff;
        }

        .fa-li {
            position: relative;
            left: 0;
        }
    </style>

</head>

<body>

	<%	
		try {
			String userid = request.getParameter("userid");
			String aaa = request.getParameter("aaa");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orkut","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM users where id='"+userid+"';");
			while (rs.next()) {
				%>
			    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			        <div class="container">
			            <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
			                data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
			                aria-label="Toggle navigation">
			                <i class="fas fa-bars"></i>
			            </button>
			            <div class="collapse navbar-collapse" id="navbarSupportedContent">
			                <ul class="navbar-nav ms-3">                    
			                    <li class="nav-item me-3" style="text-align: right;">
			                        <span style="color: white; font-weight: 600; text-align: right; position: absolute; right: 90px; bottom: 27px;"><%=rs.getString("firstname")+" "+rs.getString("lastname")%></span>
			                        <span style="color: white; font-size: 14px; text-align: right; position: absolute; right: 90px; top: 27px;"><%=rs.getString("emailid")%></span>
			                    </li>
			                    <li class="nav-item">
			                        <a class="nav-link d-flex align-items-center me-3" href="#!" style="position: absolute; left: 94%;">
			                            <svg xmlns="http://www.w3.org/2000/svg" height="1.75em" viewBox="0 0 448 512">
			                                <style>svg{fill:#01c29a}</style>
			                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
			                            </svg>
			                        </a>
			                    </li>
			                    <li class="nav-item" style="visibility: hidden;">
			                        <a class="nav-link d-flex align-items-center me-3" href="#!" style="position: relative; left: 1120px;">
			                            <svg xmlns="http://www.w3.org/2000/svg" height="1.75em" viewBox="0 0 448 512">
			                                <style>svg{fill:#01c29a}</style>
			                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
			                            </svg>
			                        </a>
			                    </li>
			                </ul>
			            </div>
			        </div>
			    </nav>
				<%				
			}
			con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
	%>

</body>
</html>