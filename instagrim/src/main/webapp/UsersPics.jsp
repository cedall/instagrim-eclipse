<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funagram - Profile</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>
        <h1>Funagram</h1>
        <h2>Your pictures even more terrifying</h2>
        </header>
        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/upload.jsp">Upload</a></li>
                <li class="nav"><a href="/Instagrim">Home</a></li>
                <li class="nav"><a href="/Instagrim/logout.jsp">Logout</a></li>
            </ul>
        </nav>
 
        <article>
            <h2>Your Pics</h2>
            
            <%
                String username;        
               	LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            	username=lg.getUsername();
  			%>
  			<p>
  			<%
  				out.println("@" + username);
  			%>
  			</p>
  			<%
            	java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
			    if (lsPics == null) {
       		%>
        <p>No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();
        %>
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img style="left: 50px;" src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/><%

            }
            }
        %>
        </article>
    </body>
</html>
