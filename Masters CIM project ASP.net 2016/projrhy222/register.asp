<html>

<head>
<title>Registration Page</title>
<style>
table {
    border-collapse: collapse;
}

table, td, th {
    border: 2px solid black;
}
</style>
</head>

<body background="cg1.png">
<h1 align="center">Registration Form:</h1>
<form action=insert.asp method=get>
<center>
<table width=600 border=1>
<tr>
<td><b><h3>Enter your username</h3></b></td>
<td><input type=text name=uname ></td>

</tr>

<tr>
<td><b><h3>Enter your password</h3></b></td>
<td><input type=password name=psw></td>
</tr>

<tr>
<td><b><h3>Select your Gender</h3></b></td>
<td>
<input type=radio name=gender value=Male> Male
<input type=radio name=gender value=Female> Female
</td>
</tr>

<tr>
<td><b><h3>Select your Languages</h3></b></td>
<td>
<input type=checkbox name=lang1 value=English> English
<input type=checkbox name=lang2 value=Hindi> Hindi
</td>
</tr>

<tr>
<td><b><h3>Enter your Date of Birth (Format:mm/dd/yyyy)</h3></b></td>
<td><input type=text name=dob maxlength=10></td>
</tr>


<tr>
<td><b><h3>Enter your Email</h3></b></td>
<td><input type=text name=salary></td>
</tr>

<tr>
<td><b><h3>Enter your rollno</h3></b></td>
<td><input type=text name=rno></td>
</tr>

<tr>
<td><b><h3>Select your designation</h3></b></td>
<td>
<input type=radio name=desig value=Student> Student
<input type=radio name=desig value=Teacher> Teacher
</td>
</tr>





<tr>
<td><center><input type=reset></center></td>
<td><center><input type=submit value=Register onclick="msg()"></center></td>
<script>
function msg() {
    alert("Hello and welcome to our website ");
}
</script>
</tr>
</table>
</form>
</body>
</html>




