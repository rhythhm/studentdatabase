<html>
<head>
<title>Edit Profile Page</title>
</head>
<body>
<%
Dim un
un=request.querystring("uname")

response.write("Welcome " & un & "<br>")
Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2="select  *  from users where username='" & un &       "'"
set rs1=con1.execute(str2)

%>

<h2>Edit your Profile:</h2>

<form action=saveprofile.asp method=get>
<table border=1 width=800>
<tr>
<td>Change Password</td>
<td><input type=text name=psw value='<%=rs1(1)%>'></td>
</tr>

<tr>
<td>Change Gender</td>
<td><input type=text name=gender value='<%=rs1(2)%>'></td>
</tr>

<tr>
<td>Change Language 1</td>
<td><input type=text name=lang1 value='<%=rs1(3)%>'></td>
</tr>

<tr>
<td>Change Language 2</td>
<td><input type=text name=lang2 value='<%=rs1(4)%>'></td>
</tr>

<tr>
<td>Change DOB</td>
<td><input type=text name=dob value='<%=rs1(5)%>'></td>
</tr>

<tr>
<td>Change email</td>
<td><input type=text name=salary value='<%=rs1(6)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=rno value='<%=rs1(7)%>'></td>
</tr>

<tr>
<td>Change designation</td>
<td><input type=text name=de value='<%=rs1(8)%>'></td>
</tr>

<tr>
<td>Change rmt</td>
<td><input type=text name=s1 value='<%=rs1(9)%>'></td>
</tr>

<tr>
<td>Change lscm</td>
<td><input type=text name=s2 value='<%=rs1(10)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s3 value='<%=rs1(11)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s4 value='<%=rs1(12)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s5 value='<%=rs1(13)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s6 value='<%=rs1(14)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s7 value='<%=rs1(15)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s8 value='<%=rs1(16)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s9 value='<%=rs1(17)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s10 value='<%=rs1(18)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s11 value='<%=rs1(19)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s12 value='<%=rs1(20)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s13 value='<%=rs1(21)%>'></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=s14 value='<%=rs1(22)%>'></td>
</tr>


<tr>
<td><input type=reset></td>
<td><input type=submit value=Save></td>
</tr>
</table>
<input type=hidden name=uname value=<%=un%>>

</form>
</body>
</html>









