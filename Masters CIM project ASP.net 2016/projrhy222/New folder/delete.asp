<html>
<head>
<title>Delete User Page</title>
</head>
<body>
<%
Dim duser
duser=request.querystring("deluser")

Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2="Delete from users where username='" & duser & "'"
con1.execute str2
%>

<h2>The username <%=duser%> has been deleted permanently from the database</h2>
</body>
</html>









