

<!DOCTYPE html>
<html >

<head>
  <meta charset="UTF-8">
  <title>info</title>
 

  

      <style>
      .container {
  max-width: 350px;
  background-color: black;
  margin: 0 auto;
  text-align: center;
  position: relative;
}
.container div {
  background-color: white;
  width: 100%;
  display: inline-block;
  display: none;
}
.container img {
  width: 100%;
  height: auto;
}

button {
  position: absolute;
}

.next {
  right: 250px;
}

.prev {
  left: 250px;
}

    </style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

</head>

<body translate="no" background="bh.jpg" TEXT="WHITE" TEXT="WHITE" LINK="WHITE" VLINK="WHITE" ALINK="WHITE" >
<br>

<br>
<br>
<center> <h2><a href="info.ASP">FIND OUT MORE ABOUT NIFT</a></h2> </center>
  <section class="demo">
  <button class="next">Next</button>
  <button class="prev">Previous</button>
  <div class="container">
    <div style="display: inline-block;">
      <a href="info.ASP"><img src="NIFT_logo.jpg" /></a>
    </div>
    <div>
     <a href="info.ASP"><img src="b.png" /></a>
    </div>
    <div>
    <a href="info.ASP"> <img src="1.gif"/></a>
    </div>
    <div>
    <a href="info.ASP">  <img src="2.jpg"/></a>
    </div>
    <div>
    <a href="info.ASP">  <img src="3.jpg"/></a>
    </div>
    <div>
    <a href="info.ASP">  <img src="4.png"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="6.jpg"/></a>
    </div>
    <div>
    <a href="info.ASP">  <img src="7.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="8.jpg"/></a>
    </div>
<div>
     <a href="info.ASP"> <img src="9.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="10.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="11.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="12.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="5.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="13.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="14.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="15.jpg"/></a>
    </div>
<div>
    <a href="info.ASP">  <img src="16.jpeg"/></a>
    </div>

  </div>
</section>


    <script src="//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js"></script>

  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script>
    var currentIndex = 0,
  items = $('.container div'),
  itemAmt = items.length;

function cycleItems() {
  var item = $('.container div').eq(currentIndex);
  items.hide();
  item.css('display','inline-block');
}

var autoSlide = setInterval(function() {
  currentIndex += 1;
  if (currentIndex > itemAmt - 1) {
    currentIndex = 0;
  }
  cycleItems();
}, 3000);

$('.next').click(function() {
  clearInterval(autoSlide);
  currentIndex += 1;
  if (currentIndex > itemAmt - 1) {
    currentIndex = 0;
  }
  cycleItems();
});

$('.prev').click(function() {
  clearInterval(autoSlide);
  currentIndex -= 1;
  if (currentIndex < 0) {
    currentIndex = itemAmt - 1;
  }
  cycleItems();
});
  //# sourceURL=pen.js
  </script>

  
  

</body>
</html>
 