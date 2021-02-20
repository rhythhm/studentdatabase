<html>
<body>
<form method="post" action= "sem2.asp">
Enter student Name: <input type="text" size="10" max length= "40" name="name"/>
<br><br><br>

<input type="submit" value="Submit" /> 
</form>

 
<%
dim uname
uname= request.form("uname")
if name<>""then
Response.Write ("hello <br> Student name: " &uname& "!<br/>")
Response.Write ("Enter " &uname&"'s marks!")
end if

%>


</body>
</html>