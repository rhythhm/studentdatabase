<html>
<head>
<title>Valid User Page</title>
</head>
<body>
<%
Dim un, ps
un=request.querystring("uname")
ps=request.querystring("psw")


Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2 = "Select  *  from users"
Set rs1= con1.execute(str2)
x=0
while(not rs1.eof)
	if(rs1("username")=un and rs1("psw")=ps and rs1("designation")="Student") then
	x=1
        elseif (rs1("username")=un and rs1("psw")=ps and rs1("designation")="Teacher") then
        x=2

	end if
rs1.movenext
wend



if (x=1) then
%>
<h1>Welcome  <%=un%>  </h1>
<h1>Your Login process is successful!!</h1>
<h2><a href=editprofile.asp?uname=<%=un%>>Edit your Profile</a></h2>
<h2><a href=viewmarks.asp?uname=<%=un%>>view your sem 1 marks</a></h2>
<h2><a href=viewmarks2.asp?uname=<%=un%>>view your sem 2 marks</a></h2>
<h2><a href=default.asp>Logout</a> from our website</h2>

<%
elseif (x=2) then
%>
<h2><a href=loginn.asp?uname=<%=un%>>Edit marks by searching</a></h2>
<h2><a href=editprofilee.asp?uname=<%=un%>&psw=<%=ps%>>View all records</a></h2>
<h2><a href=default.asp>Logout</a> from our website</h2>



<%
elseif (un="admin" and ps="abc") then
%>
<h2><a href=deleteuser.asp?uname=<%=un%>>Delete a user</a></h2>
<h2><a href=default.asp>Logout</a> from our website</h2>


<%
else
Response.write("Your Login username and password did not match<br>")
Response.write("Please try to <a href=login.asp>Login</a> again<br>")

%>


<%
end if 
%>





</body>
</html>









