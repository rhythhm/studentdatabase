<html>
<head>
<title>Save Profile Page</title>
</head>
<body>
<h1>We have received your details as follows:</h1>
<%
Dim un,  r, l, i, a, p, c, d, cp, w, e, at, f, ci, em, una, psa, sl

una=request.querystring("uname")
psa=request.querystring("psw")

un=request.querystring("unam")


r=request.querystring("s1")
l=request.querystring("s2")
i=request.querystring("s3")
a=request.querystring("s4")
p=request.querystring("s5")
c=request.querystring("s6")
d=request.querystring("s7")
cp=request.querystring("s8")
w=request.querystring("s9")

e=request.querystring("s10")
at=request.querystring("s11")
f=request.querystring("s12")
ci=request.querystring("s13")
em=request.querystring("s14")
sl=request.querystring("salary")





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
<h1>Data  is saved successfully!!</h1>

Send marks to student: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Result&body=This%20is%20your%20Semester%201%20and%202%20marksheet:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Rmt=<%=r%>%20lscm=<%=l%>%20ib=<%=i%>%20amm=<%=a%>%20plfd=<%=p%>%20cap=<%=c%>%20dnp=<%=d%>%20cpp=<%=cp%>%20wbdm=<%=w%>%20Erp=<%=e%>%20Atm=<%=at%>%20Fm=<%=f%>%20Cim=<%=ci%>%20Em=<%=em%>?" target="_blank">Send mail</a>


<h2><a href=editprofilee.asp?uname=<%=una%>>Back to editing more records</a></h2>
<h2><a href=validuser.asp?uname=<%=una%>&psw=<%=psa%>>Back to main menu</a></h2>



</body>
</html>









