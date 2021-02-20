<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>Your details are as follows:</h1>
<%
Dim un, ps, gn, l1, l2, db, sl, rn, e, at, f, ci, em
un=request.querystring("uname")

ps=request.querystring("psw")

e=request.querystring("s10")
at=request.querystring("s11")
f=request.querystring("s12")
ci=request.querystring("s13")
em=request.querystring("s14")
sl=request.querystring("salary")




response.write("username= " & un & "<br>")
response.write("password= " & ps & "<br>")

response.write("erp= " & e & "<br>")
response.write("atm= " & at & "<br>")
response.write("fm= " & f & "<br>")
response.write("cim= " & ci & "<br>")
response.write("em= " & em & "<br>")
response.write("email= " & sl & "<br>")






%>

<br>
<br>
Send marks to yourself: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Result&body=This%20is%20your%20Semester 2%20marksheet:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Erp=<%=e%>%20Atm=<%=at%>%20Fm=<%=f%>%20Cim=<%=ci%>%20Em=<%=em%>?" target="_blank">Send mail</a>


<h2><a href=validuser.asp?uname=<%=un%>&psw=<%=ps%>>Back to main menu</a></h2>

</body>
</html>









