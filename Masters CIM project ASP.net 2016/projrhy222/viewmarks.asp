<html>
<head>
<title>Edit Profile Page</title>
</head>






<body>

<% dim un, ps
un= request.querystring("uname")
ps= request.querystring("psw")

response.write("Welcome " & un & "<br>")
Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2="select  *  from users where username='" & un &       "'"
set rs1=con1.execute(str2)

%>

<h2>View your marks:</h2>

<form action=saveprofile11.asp method=get>
<table border=1 width=800>



<tr>
<td>  Gender</td>
<td><input type=text name=gender value='<%=rs1(2)%>' readonly></td>
</tr>

<tr>
<td>  Language 1</td>
<td><input type=text name=lang1 value='<%=rs1(3)%>'  readonly></td>
</tr>

<tr>
<td>  Language 2</td>
<td><input type=text name=lang2 value='<%=rs1(4)%>' readonly></td>
</tr>

<tr>
<td>  DOB</td>
<td><input type=text name=dob value='<%=rs1(5)%>' readonly></td>
</tr>

<tr>
<td>  email</td>
<td><input type=text name=salary value='<%=rs1(6)%>' readonly></td>
</tr>

<tr>
<td>  rollnumber</td>
<td><input type=text name=rno value='<%=rs1(7)%>' readonly></td>
</tr>

<tr>
<td>  designation</td>
<td><input type=text name=desig value='<%=rs1(8)%>' readonly></td>
</tr>

<tr>
<td>  rmt</td>
<td><input type=text name=s1 value='<%=rs1(9)%>'  readonly></td>
</tr>

<tr>
<td>  lscm</td>
<td><input type=text name=s2 value='<%=rs1(10)%>'  readonly></td>
</tr>

<tr>
<td>  ib</td>
<td><input type=text name=s3 value='<%=rs1(11)%>'  readonly></td>
</tr>

<tr>
<td>  amm</td>
<td><input type=text name=s4 value='<%=rs1(12)%>'  readonly></td>
</tr>

<tr>
<td>  plfd</td>
<td><input type=text name=s5 value='<%=rs1(13)%>'  readonly></td>
</tr>

<tr>
<td>  cap</td>
<td><input type=text name=s6 value='<%=rs1(14)%>' readonly></td>
</tr>

<tr>
<td>  dnp</td>
<td><input type=text name=s7 value='<%=rs1(15)%>'  readonly></td>
</tr>

<tr>
<td>  cpp</td>
<td><input type=text name=s8 value='<%=rs1(16)%>'  readonly></td>
</tr>

<tr>
<td>  wbdm</td>
<td><input type=text name=s9 value='<%=rs1(17)%>'  readonly></td>
</tr>



<tr>

<td><input type=submit value=Send_marks_to_yourself ></td>
</tr>
</table>
<input type=hidden name=uname value=<%=un%>>

<input type=hidden name=psw value='<%=rs1(1)%>'>

</form>


</body>
</html>









