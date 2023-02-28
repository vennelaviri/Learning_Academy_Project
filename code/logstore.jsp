<%@ page import ="java.sql.*" %>

<%!
Connection con;
Statement st;
ResultSet rs;
String userid, password,q;

%>

<%
try{

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cso");

st=con.createStatement();


userid=(String)request.getParameter("uname");
password=(String)request.getParameter("pwd");
q="select * from register where userid='"+userid+"' and password='"+password+"'";
rs=st.executeQuery(q);

if(rs.next())
{
response.sendRedirect("welcome.html");
}
else
response.sendRedirect("loginfail.html");
}
catch(Exception e)
{
out.println(e.toString());
}
%>

<html>
<head>
<title> loginpage</title>
</head>
<body bgcolor="dodgerblue">
<table align = "center">
<tr><th><b>LOGIN PAGE</b></th></tr>
<tr><td>username</td><td><input type="text" name='uname'</td></tr>
<tr><td>password</td><td><input type="password" name='pwd'</td></tr>
<tr><td><a href="welcome.html">
      <input type="submit" value="Submit">
    </a>
    </td></tr>
<tr><td>Don't have an account ? <a href ="login.html"> sign up now </a></td></tr>
</table>
 
</body>
</html>