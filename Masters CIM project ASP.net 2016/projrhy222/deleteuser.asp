<html>
<head>
<title>Delete User Page</title>
</head>
<body>
<%
Dim un, ps
un=request.querystring("uname")
ps=request.querystring("psw")

response.write("Welcome " & un & "<br>")

Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2 = "Select  *  from users"
Set rs1= con1.execute(str2)

%>



<h2>Select the username to Delete</h2>

<form action=delete.asp method=get> 

<input type=hidden name=uname value='<%=un%>' >
<input type=hidden name=psw value='<%=ps%>'>
<br>

<select name=deluser>
<%
while(not rs1.eof)
if  (rs1(0)<>"admin") then
response.write("<option value=" & rs1(0) & ">" & rs1(0))
end if
rs1.movenext
Wend
%>
</select>



<input type=submit value=delete>
</form>

<h2><a href=validuser1.asp?uname=admin&psw=adminabc> Back to main delete user</h2></a>

</body>
</html>









