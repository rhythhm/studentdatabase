<html>
<head>
<title>Edit Profile Page</title>
</head>
<body>
<%
Dim un, una
un=request.querystring("uname")
una=request.querystring("nem")

response.write("Welcome " & una & "<br>")
Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2="select  *  from users where username='" & un &       "'"
set rs1=con1.execute(str2)

%>

<h2>Update marks:</h2>

<form action=saveprofile2.asp method=get>
<table border=1 width=800>

<tr>
<td>  name</td>
<td><input type=text  value='<%=rs1(0)%>' disabled></td>
</tr>

<tr>
<td>Email</td>
<td><input type=text name=salary value='<%=rs1(6)%>' readonly></td>
</tr>

<tr>
<td>Change erp</td>
<td><input type=text name=s10 value='<%=rs1(18)%>'></td>
</tr>

<tr>
<td>Change atm</td>
<td><input type=text name=s11 value='<%=rs1(19)%>'></td>
</tr>

<tr>
<td>Change fm</td>
<td><input type=text name=s12 value='<%=rs1(20)%>'></td>
</tr>

<tr>
<td>Change cim</td>
<td><input type=text name=s13 value='<%=rs1(21)%>'></td>
</tr>

<tr>
<td>Change em</td>
<td><input type=text name=s14 value='<%=rs1(22)%>'></td>
</tr>


<tr>
<td><input type=reset></td>
<td><input type=submit value=Save></td>
</tr>
</table>
<input type=hidden name=uname value=<%=un%>>
<input type=hidden name=unam value=<%=una%>>

</form>
</body>
</html>









