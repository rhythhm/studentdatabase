<html>
<body>
<%
dim name
name= request.form("name")
if name<>""then
Response.Write ("hello <br> Student name: " &name& "!<br/>")
Response.Write ("Enter " &name&"'s marks!")
end if

%>

</body>
</html>