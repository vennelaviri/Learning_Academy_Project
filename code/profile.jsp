<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String q,userid;

%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","mydb","cso");

st=con.createStatement();

userid=(String)request.getParameter("userid");

session.setAttribute("su2",userid);

q="select * from register where userid='"+userid+"'";

rs=st.executeQuery(q);

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> profile </TITLE>
<STYLE>
body{
background-image: url(" https://wallpapercave.com/wp/wp2681775.jpg");
}

</STYLE>
</HEAD>

<BODY>
<form action="profile.jsp" method ="get">
<div class="signup-w3ls">
    <div class="signup-agile1">
                  <div class="form-control">
			<BR><BR><BR><BR><BR>
			<center><IMG SRC="https://us.123rf.com/450wm/caiquame/caiquame2101/caiquame210100429/163283955-blank-man-profile-head-icon-placeholder.jpg?ver=6" WIDTH="100" HEIGHT="100"  ALT="profile" ><BR><BR>
                <label class="header">Profile Photo:</label>
                
                <input id="image" type="file" name="profile_photo" placeholder="Photo" required="" capture></center>
            </div>
<%


<CENTER>
<br><br>

<TABLE border="1">
<TR>
	<TD><B>Firstname</TD>
	<TD><%=rs.getObject(1)%></TD>
	<TD><B>Lastname</TD>
	<TD><%=rs.getObject(2)%></TD>
	<TD><B>&nbsp;</TD>
	<TD>&nbsp;</TD>
</TR>
<TR>
	<TD><B>Age</TD>
	<TD><%=rs.getObject(3)%></TD>
	<TD><B>Date of Birth</TD>
	<TD><%=rs.getObject(4)%></TD>
</TR>
<TR>
	<TD><B>Gender</TD>
	<TD><%=rs.getObject(5)%></TD>
	<TD><B>Phone no</TD>
	<TD><%=rs.getObject(6)%></TD>
</TR>
<TR>
	<TD><B>Email Address</TD>
	<TD><%=rs.getObject(7)%></TD>
	<TD><B>City</TD>
	<TD><%=rs.getObject(8)%></TD>
</TR>


<TR>
	<TD><B>Userid</TD>
	<TD><%=userid%></TD>
	<TD><B>Password</TD>
	<TD><%=rs.getObject(11)%></TD>
</TR>

</TABLE><BR>

<INPUT TYPE="button" onClick="window.location='welcome.html'" value="BACK">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            
            
   
    </div>
</div>
     </form>
</BODY>
</HTML>
<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>
