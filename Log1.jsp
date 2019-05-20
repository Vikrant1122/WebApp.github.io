<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<%
String Username= request.getParameter("user");
String Password = request.getParameter("pwd");

try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Dyna","root","root");
PreparedStatement ps = con.prepareStatement("insert into tb2 values(?,?)");

ps.setString(1,Username);
ps.setString(2,Password);
ps.executeUpdate();
out.println("Login is SuccessFully");
}catch(Exception e){
out.println(e);
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Successfully</title>
    </head>
    <body>
        <form action="Home.jsp">
       
            <h1>If you show Login is successfully so,Click OK</h1><br/>
            <input type="submit" value="ok">
        </form>
    </body>
</html>
