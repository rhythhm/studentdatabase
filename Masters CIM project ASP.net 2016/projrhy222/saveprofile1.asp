<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>We have received your details as follows:</h1>
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

Dim un, una
un=request.querystring("uname")
una=request.querystring("unam")


response.write("Welcome " & una & "<br>")
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

Dim con1, fp, str1, str2
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1



str2 = "update users set sem1_rmt='" & r & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_lscm='" & l & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_ib='" & i & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_amm='" & a & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_plfd='" & p & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_cap='" & c & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_dnp='" & d & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_cpp='" & cp & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set sem1_wbdm='" & w & "'  where username='" & un & "'"
con1.execute str2


%>
<h1>The entered data  is saved successfully!!</h1>
<form><input type=hidden value=<%=una%></form>
Send marks to student: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Result&body=This%20is%20your%20Semester 1%20marksheet:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Rmt=<%=r%>%20lscm=<%=l%>%20ib=<%=i%>%20amm=<%=a%>%20plfd=<%=p%>%20cap=<%=c%>%20dnp=<%=d%>%20cpp=<%=cp%>%20wbdm=<%=w%>?" target="_blank">Send mail</a>

<h2><a href=loginn.asp?uname=<%=una%>>Back to update marks page</a></h2>



</body>
</html>









