<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funagram - Register</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
        <h1>Funagram</h1>
        <h2>Your pictures even more terrifying</h2>
        </header>
        <nav>
            <ul>
                
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </nav>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <table style="width:30%">
                	<tr>
                		<th>User Name: </th>
                		<td><input type="text" name="username"required></td>
                	</tr>
                	<tr>
                		<th>Password: </th>
                		<td><input type="password" name="password"required></td>
                	</tr>
                	<tr>
                		<th>First Name: </th>
                		<td><input type="text" name="full_name"required></td>
                	</tr>
                	<tr>
                		<th>Last Name: </th>
                		<td><input type="text" name="last_name"required></td>
                	</tr>
                	<tr>
                		<th>E-mail: </th>
                		<td><input type="set<text>" name="email"required></td>
                	</tr>
                </table>

                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>
    </body>
</html>
