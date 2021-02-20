<html>
<head>
<title>Login</title>
</head>
<body leftmargin="100" background= a.jpg alink="white" vlink="white" link="white" text="white">

<br> <br><br>

<%
Dim un
un=request.querystring("uname")
response.write("Welcome " & un & "<br> <H1> CHOOSE SEMESTER:</H1>")
%>

<H1>
<br> <a href= login1.asp?uname=<%=un%> style="text-decoration:none">Semester 1</a> 
 <br><br> <a href= login2.asp?uname=<%=un%> style="text-decoration:none">Semester 2</a> 
</H1>



</body>
</html>




