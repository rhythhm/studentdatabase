<html>
<head>
<title>Home Page</title>
</head>
<body background="h.jpg" LINK="black" VLINK="black" ALINK="black">
<h3>

<script language="JavaScript">
<!--
function clock(){
var time = new Date()
var hr = time.getHours()
var min = time.getMinutes()
var sec = time.getSeconds()
var ampm = " PM "
if (hr < 12){
ampm = " AM "
}
if (hr > 12){
hr -= 12
}
if (hr < 10){
hr = " " + hr
}
if (min < 10){
min = "0" + min
}
if (sec < 10){
sec = "0" + sec
}
document.clockForm.clockButton.value = hr + ":" + min + ":" + sec + ampm
setTimeout("clock()", 1000)
}
function showDate(){
var date = new Date()
var year = date.getYear()
if(year < 1000){
year += 1900
}
var monthArray = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
alert( monthArray[date.getMonth()] + " " + date.getDate() + ", " + year)
}
window.onload=clock;
//-->
</script>

<form name="clockForm">
<input type=label name="clockButton" size="7" style="border:none;background-color:#F2EEED" readonly  />
<% response.write(Date)  %>
<br>
<%
response.write(weekdayname(weekday(date)))
%>
</form>


<br>


<h3>

<a href=defaultsh.asp target="frm2" style="text-decoration:none">HOME</a><br><br><br>
<a href=register.asp target="frm2" style="text-decoration:none">REGISTER</a><br><br><br>
<a href=login.asp target="frm2" style="text-decoration:none">LOGIN</a><br><br><br>
<a href=defaultsh.asp target="frm2" style="text-decoration:none">LOGOUT</a><br><br><br>
<a href=delete1.asp target="frm2" style="text-decoration:none">DELETE USERS</a><br><br>

</body>
</html>




