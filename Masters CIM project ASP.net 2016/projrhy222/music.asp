<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">

  
  

  
  
  

  

  <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.js"></script>

  

  
    <link rel="stylesheet" type="text/css" href="/css/normalize.css">
  

  

  
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">
  

  

  <style type="text/css">
   
li.nostyle {
    list-style-type: none;
}

audio { width: 3px; }

  </style>

  <title>HTML5 Audio with playlists by lastrose</title>

  
    




<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
var audio;
var playlist;
var tracks;
var current;

init();
function init(){
    current = 0;
    audio = $('audio');
    playlist = $('#playlist');
    tracks = playlist.find('li a');
    len = tracks.length - 1;
    audio[0].volume = .10;
    playlist.find('a').click(function(e){
        e.preventDefault();
        link = $(this);
        current = link.parent().index();
        run(link, audio[0]);
    });
    audio[0].addEventListener('ended',function(e){
        current++;
        if(current == len){
            current = 0;
            link = playlist.find('a')[0];
        }else{
            link = playlist.find('a')[current];    
        }
        run($(link),audio[0]);
    });
}
function run(link, player){
        player.src = link.attr('href');
        par = link.parent();
        par.addClass('active').siblings().removeClass('active');
        audio[0].load();
        audio[0].play();
}
});//]]> 


</script>

  
</head>

<body>
      <audio id="audio" preload="auto" tabindex="0" controls autoplay>
        <source type="audio/mp3" src="bgmusic.mp3">
        Sorry, your browser does not support HTML5 audio.
    </audio>
    <ul id="playlist">
        <li class="nostyle"><a href="bgmusic.mp3"></a></li>
        <li class="nostyle"><a href="bgmusic1.mp3"> </a></li>
        <li class="nostyle"><a href="bgmusic2.mp3"></a></li>
        <li class="nostyle"><a href="bgmusic3.mp3"></a></li>
        <li class="nostyle"><a href="bgmusic4.mp3"></a></li>
        <li class="nostyle"><a href="bgmusic5.mp3"></a></li>
        <li class="nostyle"><a href="bgmusic5.mp3"></a></li>

    </ul>

<embed src="bgmusic2.mp3" height="60" width="300"/>

</body>

</html>			