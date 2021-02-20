<html>
<head>
<title>Login</title>
</head>
<body leftmargin="100" background= a.jpg text="white">

<br><br><br><br>



<%
Dim un
un=request.querystring("uname")

response.write("Welcome " & un & "<br><h2>Select student</H2>")


Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2 = "Select *  from users"
Set rs1= con1.execute(str2)

%>

<form action=sem1.asp method=get>
<table width=800>
 <input type=hidden name=nem value=<%=un%>><br><br>
<select name=uname>
<%
while(not rs1.eof)
if  (rs1(8)<>"Teacher") and (rs1(8)<>"Admin") then
response.write("<option value=" & rs1(0) & ">" & rs1(0))
end if
rs1.movenext
Wend
%>
</select>
   



<tr> 
<td> <br><pre>          <input type=submit value=Next>      <a href= register.asp><input type=button value=Register></a> </td></pre>
</tr>


</table>
</form>
</body>
</html>




