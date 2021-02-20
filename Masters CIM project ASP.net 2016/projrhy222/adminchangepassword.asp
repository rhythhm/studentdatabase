<html>
<head>
<title>Edit Profile Page</title>
</head>
<body>
<%
Dim un
un=request.querystring("uname")

response.write("Welcome " & un & "<br>")

Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2="select  *  from users where username='" & un &       "'"
set rs1=con1.execute(str2)

%>

<h2>Edit your Profile:</h2>

<form action=saveprof.asp method=get>
<table border=1 width=800>
<tr>
<td> username</td>
<td><input type=text name=uname value='<%=rs1(0)%>' readonly></td>
</tr>

<td>Change Password</td>
<td><input type=text name=psw value='<%=rs1(1)%>'></td>
</tr>



<tr>
<td><input type=reset></td>
<td><input type=submit value=Save></td>
</tr>
</table>

</form>
</body>
</html>









