<html>
<head>
<title>Insert Page</title>
</head>
<body>
<h1>We have received your details as follows:</h1>
<%
Dim un, ps, gn, l1, l2, db, sl, rn, de
un=request.querystring("uname")
ps=request.querystring("psw")
gn=request.querystring("gender")
l1=request.querystring("lang1")
l2=request.querystring("lang2")
db=request.querystring("dob")
sl=request.querystring("salary")
rn=request.querystring("rno")
de=request.querystring("desig")



response.write("username= " & un & "<br>")
response.write("password= " & ps & "<br>")
response.write("gender= " & gn & "<br>")
response.write("Language1= " & l1 & "<br>")
response.write("Language2= " & l2 & "<br>")
response.write("Date of Birth= " & db & "<br>")
response.write("Emai Id= " & sl & "<br>")
response.write("Roll number= " & rn & "<br>")
response.write("Designation= " & de & "<br>")



Dim con1, fp, str1, str2, xi
xi=0

Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2="Insert into users values("
str2=str2 & "'" & un & "',"
str2=str2 & "'" & ps & "',"
str2=str2 & "'" & gn & "',"
str2=str2 & "'" & l1 & "',"
str2=str2 & "'" & l2 & "',"
str2=str2 & "#" & db & "#,"
str2=str2 & "'" & sl & "',"
str2=str2 & "'" & rn & "',"
str2=str2 & "'" & de & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & "'" & xi & "',"
str2=str2 & xi

str2=str2 & ")"



'Response.write(str2 & "<BR>")
con1.execute str2

%>

<h1>Your Registration process is successful!!</h1>
<h2><a href=loginy.asp?uname=<%=un%>&psw=<%=ps%>>Login</a> to access our website</h2>
Mail yourself the registration details: <a href="mailto:<%=sl%>?cc=14dipti@gmail.com&bcc=gurdamans@gmail.com&subject=Your%20Information&body=This%20is%20your%20registered%20information%20on%20nift%20website:%20%20%20%20%20%20%20%20%20Username=<%=un%>%20Password=<%=ps%>%20gender=<%=gn%>%20language1=<%=l1%>%20language2=<%=l2%>%20DOB=<%=db%>%20email=<%=sl%>%20roll number=<%=rn%>%20designation=<%=de%>?" target="_blank">Send mail</a>
</body>
</html>









