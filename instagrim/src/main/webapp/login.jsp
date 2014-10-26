<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funagram - Login</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
        <header>
        <h1>Funagram</h1>
        <h2>Your pictures even more terrifying</h2>
        </header>
       
        <article>
            <h3>Login</h3>
            <nav>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </nav>
            <form method="POST"  action="Login">
                <table style="width:30%">
                	<tr>
                		<th>User Name: </th>
                		<td><input type="text" name="username"></td>
                	</tr>
                	<tr>
                		<th>Password: </th>
                		<td><input type="password" name="password"></td>
                	</tr>
                </table>
                <br/>
                <input type="submit" value="Login"> 
            </form>

        </article>
    </body>
</html>
