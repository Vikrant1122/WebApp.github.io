<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<%
String Name = request.getParameter("name");
String Email = request.getParameter("email");
String Contact = request.getParameter("contact");
String Address = request.getParameter("address");

try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Dyna","root","root");
PreparedStatement ps = con.prepareStatement("insert into tbl values(?,?,?,?)");

ps.setString(1,Name);
ps.setString(2,Email);
ps.setString(3,Contact);
ps.setString(4,Address);
ps.executeUpdate();
out.println("Registration is SuccessFully");
}catch(Exception e){
out.println(e);
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Successfully</title>
    </head>
    <body>
        <form action="Login.jsp">
       
            <h1>If you show Registration is successfully so,Click for Login</h1><br/>
            <input type="submit" value="Login" style="">
        </form>
    </body>
</html>
