<html>
<head>
<title>Delete User Page</title>
</head>
<body>
<%
Dim duser, un, ps
duser=request.querystring("deluser")
un=request.querystring("uname")
ps=request.querystring("psw")

Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2="Delete from users where username='" & duser & "'"
con1.execute str2
%>

<h2>The username <%=duser%> has been deleted permanently from the database</h2>


<h2><a href=deleteuser.asp?uname=<%=un%>&psw=<%=ps%>> Back to delete user</h2></a>
<h2><a href=validuser1.asp?uname=<%=un%>&psw=<%=ps%>> Back to main delete user</h2></a>


</body>
</html>









