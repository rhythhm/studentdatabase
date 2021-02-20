<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>We have received your details as follows:</h1>
<%
Dim un, ps
un=request.querystring("uname")
ps=request.querystring("psw")


response.write("username= " & un & "<br>")
response.write("password= " & ps & "<br>")



Dim con1, fp, str1, str2
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2 = "update users set psw='" & ps & "'  where username='" & un & "'"
con1.execute str2




%>









<h1>Your New Password  is saved successfully ADMIN!!</h1>
<h2><a href=validuser1.asp?uname=<%=un%>&psw=<%=ps%>> Back to delete user</h2></a>

</body>
</html>









