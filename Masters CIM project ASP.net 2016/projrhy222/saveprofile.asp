<html>
<head>
<title>Save Profile Page</title>
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
response.write("email= " & sl & "<br>")
response.write("rollnumber= " & rn & "<br>")
response.write("designation= " & de & "<br>")


Dim con1, fp, str1, str2
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1

str2 = "update users set psw='" & ps & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set gender='" & gn & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set language1='" & l1 & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set language2='" & l2 & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set dob=#" & db & "#  where username='" & un & "'"
con1.execute str2

str2 = "update users set email='" & sl & " ' where username='" & un & "'"
con1.execute str2

str2 = "update users set rollno='" & rn & "'  where username='" & un & "'"
con1.execute str2

str2 = "update users set designation='" & de & "'  where username='" & un & "'"
con1.execute str2




%>
<h1>Your Profile Data  is saved successfully!!</h1>

<h2><a href=validuser.asp?uname=<%=un%>&psw=<%=ps%>>Back to main menu</a></h2>



</body>
</html>









