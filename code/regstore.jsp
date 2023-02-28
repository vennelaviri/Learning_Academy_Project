<%@ page import ="java.sql.*"%>

<%
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String age=request.getParameter("age");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String phoneno=request.getParameter("pno");
String emailadd=request.getParameter("emailadd");
String city=request.getParameter("city");
String state=request.getParameter("state");
String userid=request.getParameter("uname");
String password=request.getParameter("pwd");
String confirmpassword=request.getParameter("pwdd");



try 
{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cso");
	PreparedStatement ps=conn.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,firstname);
	ps.setString(2,lastname);
	ps.setString(3,age);
	ps.setString(4,dob);
	ps.setString(5,gender);
	ps.setString(6,phoneno);
	ps.setString(7,emailadd);
	ps.setString(8,city);
	ps.setString(9,state);
	ps.setString(10,userid);
	ps.setString(11,password);
	ps.setString(12,confirmpassword);

	ps.executeQuery();
}
catch(Exception e) 
{
  	out.println(e);
}
%>