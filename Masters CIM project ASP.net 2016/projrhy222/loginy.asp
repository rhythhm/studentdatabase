<html>
<head>
<title>Login</title>
</head>
<body leftmargin="100" background= a.jpg text = "white">
<center>
<br><br><br><br>
<h1>Login to access our website:</h1>
<form action=validuser.asp method=get>
<table>
<% Dim un, ps
un=request.querystring("uname")
ps=request.querystring("psw")
%>

<tr>
<th>Enter your username</th>
   <td>      <input type=text name=uname value=<%=un%>><br><br>        </td> 
</tr>

<tr>
<th>Enter your password</th>
   <td>      <input type=password name=psw value=<%=ps%>>          </td>          
</tr>

<tr> 
<td> <br><br> <input type=reset>    </td>
<td> <br><br> <input type=submit value=Login> </td>
<td> <br><br> <a href= register.asp><input type=button value=Register></a> </td>
</tr>
</table>
</form>
</body>
</html>




