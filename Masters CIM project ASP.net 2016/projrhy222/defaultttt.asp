<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width", initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>

<h2 class="w3-center">FIND OUT MORE ABOUT NIFT</h2>

<div class="w3-content w3-display-container">
  <img class="mySlides" src="NIFT_logo.jpg" style="width:50%">
<div class="w3-display-bottomleft w3-large w3-container w3-padding-16 w3-black">
    Trolltunga, Norway
  </div>
</div>
<div class="w3-content w3-display-container">
 <img class="mySlides" src="b.png" style="width:50%">
 <img class="mySlides" src="1.gif" style="width:50%">
 <img class="mySlides" src="2.jpg" style="width:50%">
 <img class="mySlides" src="3.jpg" style="width:50%">
 <img class="mySlides" src="4.png" style="width:50%">
 <img class="mySlides" src="6.jpg" style="width:50%">
  <img class="mySlides" src="7.jpg" style="width:50%">
  <img class="mySlides" src="8.jpg" style="width:50%">
  <img class="mySlides" src="9.jpg" style="width:50%">
<img class="mySlides" src="10.jpg" style="width:50%">
<img class="mySlides" src="11.jpg" style="width:50%">
<img class="mySlides" src="12.jpg" style="width:50%">
<img class="mySlides" src="5.jpg" style="width:50%">
<img class="mySlides" src="13.jpg" style="width:50%">
<img class="mySlides" src="14.jpg" style="width:50%">
<img class="mySlides" src="15.jpg" style="width:50%">
<img class="mySlides" src="16.jpeg" style="width:50%">


  <a class="w3-btn-floating w3-display-left" onclick="plusDivs(-1)" >&#10094;</a>
  <a class="w3-btn-floating w3-display-right" onclick="plusDivs(1)">&#10095;</a>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

</body>
</html>