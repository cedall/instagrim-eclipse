<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Funagram</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1>Funagram</h1>
            <h2>Your pictures even more terrifying</h2>
        </header>
		<nav>
			<ul>
				<%
       				LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
        			if (lg != null) {
            			String UserName = lg.getUsername();
            			if (lg.getlogedin()){
        		%>
        				<li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a><br/></li>
                		<li><a href="upload.jsp">Upload</a><br/></li>
                		<li><a href="/Instagrim/logout.jsp">Logout</a><br/></li>
					<%}
        				}else{
        					%>
            	   		<li><a href="register.jsp">Register</a><br/></li>
                		<li><a href="login.jsp">Login</a><br/></li>
              	  	<%
                
        				}%>
			</ul>
		</nav>
    </body>
</html>
