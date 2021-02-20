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
	if(rs1("username")=un and rs1("psw")=ps and rs1("designation")="Admin") then
	x=1
        
      	end if
rs1.movenext
wend



if (x=1) then
%>

<h2><a href=deleteuser.asp?uname=<%=un%>>Delete a user</a></h2>
<h2><a href=default.asp>Logout</a> from our website</h2>
<h2><a href=adminchangepassword.asp?uname=<%=un%>> Change password</a> </h2>



<%
else
Response.write("Your Login username and password did not match<br>")
Response.write("Please try to <a href=delete1.asp>Login</a> again<br>")

%>


<%
end if 
%>







</body>
</html>









