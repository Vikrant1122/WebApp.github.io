<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form action="Reg1.jsp">
        <table align="center" border="2" background="02.png" bordercolor="yellow" height="500" width="500">
            <tr><th colspan="2">Registration</th></tr>
                <tr><th>NAME:</th><td><input type="text" placeholder="name" name="name"></td></tr>
               <tr><th>Email:</th><td><input type="text" placeholder="email" name="email"></td></tr>
               <tr><th>Contact:</th><td><input type="text" placeholder="contact" name="contact"></td></tr>
               <tr><th>Address</th><td><input type="text" placeholder="address" name="address"></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="submit"></td></tr>
            </table>
            </form>
    </body>
</html>
