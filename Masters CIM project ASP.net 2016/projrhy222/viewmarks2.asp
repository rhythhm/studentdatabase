<html>
<head>
<title>Edit Profile Page</title>
</head>
<body>
<%
Dim un, ps
un=request.querystring("uname")
ps= request.querystring("psw")

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

<form action=saveprofile22.asp method=get>
<table border=1 width=800>

<tr>
<td>  email</td>
<td><input type=text name=salary value='<%=rs1(6)%>' readonly></td>
</tr>

<tr>
<td>  erp</td>
<td><input type=text name=s10 value='<%=rs1(18)%>' readonly></td>
</tr>

<tr>
<td>  atm</td>
<td><input type=text name=s11 value='<%=rs1(19)%>' readonly></td>
</tr>

<tr>
<td>  fm</td>
<td><input type=text name=s12 value='<%=rs1(20)%>' readonly></td>
</tr>

<tr>
<td>  cim</td>
<td><input type=text name=s13 value='<%=rs1(21)%>' readonly></td>
</tr>

<tr>
<td>  em</td>
<td><input type=text name=s14 value='<%=rs1(22)%>' readonly></td>
</tr>


<tr>
<td><input type=submit value=Send_marks_to_yourself ></td>

</tr>
</table>
<input type=hidden name=uname value=<%=un%>>

<input type=hidden name=psw value='<%=rs1(1)%>'>

</form>
</body>
</html>









