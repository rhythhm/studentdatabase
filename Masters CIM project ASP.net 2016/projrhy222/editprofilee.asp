<html>
<head>
<title>Edit Profile Page</title>
</head>
<body>




<%
Dim un, ps

un=request.querystring("uname")
ps=request.querystring("psw")

response.write("Welcome " & un & "<br><br>") 



Dim con1, fp, str1, str2, rs1
Set con1 = Server.CreateObject("ADODB.Connection")
fp= Server.MapPath("details.mdb")
str1="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & fp
con1.open  str1
dim x
x="Student"

str2="select  *  from users where designation= '" & x &       "' "
set rs1=con1.execute(str2)
%>



<table  STYLE= "border:1.5px solid BLACK;border-collapse:collapse;" >
<tr BGCOLOR=BLACK>

<td ><input type=TEXT value="USERNAME" size="10"  style="background-color:#FCF5D8; border:2px solid #FCF5D8;" readonly ></td>
<td ><input type=TEXT value="GENDER" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="LANGUAGE 1" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="LANGUAGE 2" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="DOB" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="EMAIL" size="20" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="ROLL NUMBER" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="DESIGNATION" size="10" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>

<td ><input type=TEXT value="RMT" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="LSCM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="IB" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="AMM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="PLFD" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="CAP" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="DNP" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="CPP" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="WBDM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>


<td ><input type=TEXT value="ERP" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="ATM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="FM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="CIM" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>
<td ><input type=TEXT value="ERP" size="2" style="background-color:#FCF5D8; border:2px solid #FCF5D8;"  readonly></td>


</tr>
</table>


<%

while(not rs1.eof)



%>

<form action=saveprofilee.asp method=get>
<input type=hidden name=uname value='<%=un%>' size="10" readonly> <input type=hidden name=psw value='<%=ps%>' size="10" readonly>

<table STYLE= "border:3px solid WHITE ;border-collapse:collapse;">
<tr>


<td ><input type=text name=unam value='<%=rs1(0)%>' size="10" readonly></td>
<td><input type=text name=gender value='<%=rs1(2)%>' size="10" disabled></td>
<td><input type=text name=lang1 value='<%=rs1(3)%>' size="10" disabled></td>
<td><input type=text name=lang2 value='<%=rs1(4)%>' size="10" disabled></td>
<td><input type=text name=dob value='<%=rs1(5)%>' size="10" disabled></td>
<td><input type=text name=salary value='<%=rs1(6)%>' size="20" readonly></td>
<td><input type=text name=rno value='<%=rs1(7)%>' size="10" disabled></td>
<td><input type=text name=desig value='<%=rs1(8)%>' size="10" disabled></td>
<td><input type=text name=s1 value='<%=rs1(9)%>' size="2"></td>
<td><input type=text name=s2 value='<%=rs1(10)%>' size="2"></td>
<td><input type=text name=s3 value='<%=rs1(11)%>' size="2"></td>
<td><input type=text name=s4 value='<%=rs1(12)%>' size="2"></td>
<td><input type=text name=s5 value='<%=rs1(13)%>' size="2"></td>
<td><input type=text name=s6 value='<%=rs1(14)%>' size="2"></td>
<td><input type=text name=s7 value='<%=rs1(15)%>' size="2"></td>
<td><input type=text name=s8 value='<%=rs1(16)%>' size="2"></td>
<td><input type=text name=s9 value='<%=rs1(17)%>' size="2"></td>
<td><input type=text name=s10 value='<%=rs1(18)%>' size="2"></td>
<td><input type=text name=s11 value='<%=rs1(19)%>' size="2"></td>
<td><input type=text name=s12 value='<%=rs1(20)%>' size="2"></td>
<td><input type=text name=s13 value='<%=rs1(21)%>' size="2"></td>
<td><input type=text name=s14 value='<%=rs1(22)%>' size="2"></td>
<td><input type=submit value=Save></td>
</form>

<br>

</tr>
<%
rs1.movenext
wend
%>




</body>
</html>









