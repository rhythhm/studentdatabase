<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>Your details are as follows:</h1>
<%
Dim  r, l, i, a, p, c, d, cp, w, sl

r=request.querystring("s1")
l=request.querystring("s2")
i=request.querystring("s3")
a=request.querystring("s4")
p=request.querystring("s5")
c=request.querystring("s6")
d=request.querystring("s7")
cp=request.querystring("s8")
w=request.querystring("s9")

sl=request.querystring("salary")

Dim un, ps
un=request.querystring("uname")
ps=request.querystring("psw")

response.write("username= " & un & "<br>")
response.write("rmt= " & r & "<br>")
response.write("lscm= " & l & "<br>")
response.write("ib= " & i & "<br>")
response.write("amm= " & a & "<br>")
response.write("plfd= " & p & "<br>")
response.write("cap= " & c & "<br>")
response.write("dnp= " & d & "<br>")
response.write("cpp= " & cp & "<br>")
response.write("wbdm= " & w & "<br>")
response.write("email= " & sl & "<br>")


%>

<br>
<br>
Send marks to yourself: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Result&body=This%20is%20your%20Semester 1%20marksheet:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Rmt=<%=r%>%20lscm=<%=l%>%20ib=<%=i%>%20amm=<%=a%>%20plfd=<%=p%>%20cap=<%=c%>%20dnp=<%=d%>%20cpp=<%=cp%>%20wbdm=<%=w%>?" target="_blank">Send mail</a>

<h2><a href=validuser.asp?uname=<%=un%>&psw=<%=ps%>>Back to main menu</a></h2>


</body>
</html>









