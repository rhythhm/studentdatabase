<html>
<head>
<title>Edit Profile Page</title>
</head>






<body>

<% 

response.write("Welcome " & un & "<br>")
Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
str2="select  *  from users"
set rs1=con1.execute(str2)

%>

<h2>Edit your Profile:</h2>

<form action=saveprofile1.asp method=get>
<table border=1 width=800>

<tr>
<td>Change Name</td>
<td><input type=text name=uname value='<%=rs1(0)%>' disabled></td>
</tr>

<tr>
<td>Change Gender</td>
<td><input type=text name=gender value='<%=rs1(2)%>' disabled></td>
</tr>

<tr>
<td>Change Language 1</td>
<td><input type=text name=lang1 value='<%=rs1(3)%>'  disabled></td>
</tr>

<tr>
<td>Change Language 2</td>
<td><input type=text name=lang2 value='<%=rs1(4)%>' disabled></td>
</tr>

<tr>
<td>Change DOB</td>
<td><input type=text name=dob value='<%=rs1(5)%>' disabled></td>
</tr>

<tr>
<td>Change email</td>
<td><input type=text name=salary value='<%=rs1(6)%>'  disabled ></td>
</tr>

<tr>
<td>Change rollnumber</td>
<td><input type=text name=rno value='<%=rs1(7)%>'  disabled ></td>
</tr>

<tr>
<td>Change designation</td>
<td><input type=text name=desig value='<%=rs1(8)%>'  disabled></td>
</tr>

<tr>
<td>Change rmt</td>
<td><input type=text name=s1 value='<%=rs1(9)%>' ></td>
</tr>

<tr>
<td>Change lscm</td>
<td><input type=text name=s2 value='<%=rs1(10)%>' ></td>
</tr>

<tr>
<td>Change ib</td>
<td><input type=text name=s3 value='<%=rs1(11)%>' ></td>
</tr>

<tr>
<td>Change amm</td>
<td><input type=text name=s4 value='<%=rs1(12)%>' ></td>
</tr>

<tr>
<td>Change plfd</td>
<td><input type=text name=s5 value='<%=rs1(13)%>' ></td>
</tr>

<tr>
<td>Change cap</td>
<td><input type=text name=s6 value='<%=rs1(14)%>'  ></td>
</tr>

<tr>
<td>Change dnp</td>
<td><input type=text name=s7 value='<%=rs1(15)%>' ></td>
</tr>

<tr>
<td>Change cpp</td>
<td><input type=text name=s8 value='<%=rs1(16)%>' ></td>
</tr>

<tr>
<td>Change wbdm</td>
<td><input type=text name=s9 value='<%=rs1(17)%>'  ></td>
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









