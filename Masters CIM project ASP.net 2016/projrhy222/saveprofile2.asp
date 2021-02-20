<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>We have received your details as follows:</h1>
<%
Dim un, ps, gn, l1, l2, db, sl, rn, e, at, f, ci, em, una
un=request.querystring("uname")
una=request.querystring("unam")

e=request.querystring("s10")
at=request.querystring("s11")
f=request.querystring("s12")
ci=request.querystring("s13")
em=request.querystring("s14")
sl=request.querystring("salary")



response.write("Welcome " & una & "<br>")
response.write("username= " & un & "<br>")

response.write("erp= " & e & "<br>")
response.write("atm= " & at & "<br>")
response.write("fm= " & f & "<br>")
response.write("cim= " & ci & "<br>")
response.write("em= " & em & "<br>")
response.write("email= " & sl & "<br>")


Dim con1, fp, str1, str2
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1


str2 = "update users set sem2_erp='" & e & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem2_atm='" & at & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem2_fm='" & f & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem2_cim='" & ci & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem2_em='" & em & "'  where username='" & un & "'"
con1.execute str2




%>
<h1>The entered data  is saved successfully!!</h1>

Send marks to student: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Result&body=This%20is%20your%20Semester 2%20marksheet:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Erp=<%=e%>%20Atm=<%=at%>%20Fm=<%=f%>%20Cim=<%=ci%>%20Em=<%=em%>?" target="_blank">Send mail</a>


<h2><a href=loginn.asp?uname=<%=una%>>Back to update marks page</a></h2>

</body>
</html>









