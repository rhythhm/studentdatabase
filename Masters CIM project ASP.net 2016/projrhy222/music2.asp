
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en-us"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en-us"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en-us"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en-us"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>HTML5 Audio Playlist Example</title>
		<meta name="description" content="A working example of an html5 audio playlist. This has been tested in Internet Explorer - IE9, Firefox, Safari, and Google Chrome.">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="html5_audio_playlist_example.css" />
		<script src="/js/libs/modernizr-2.6.2.min.js"></script>
<style>
li.nostyle {
    list-style-type: none;
}
audio { width: 3px; }

</style>
	</head>

	<body background="h.jpg">
<center>
<br>

<div id="audiowrap">
						<div id="audio0">
                                                    

							<audio id="audio1" controls autoplay>
								Your browser does not support the HTML5 Audio Tag.
							</audio>
						</div>

<div id="extraControls" class="is-audio"> <button id="btnPrev" class="ctrlbtn"><img src="pb.png"></button>
					 <button id="btnNext" class="ctrlbtn"><img src="nb.png"></button>
                                          
                                                      
						</div>
		<div id="container">
	
			<div id="content" role="main">
				<div id="cwrap">
					<div id="nowPlay" class="is-audio">
						<h3 id="npAction">Paused:</h3>
						<div id="npTitle"></div>
					</div>

					
						
<div id="plwrap" class="is-audio">
						
						<div class="clear"></div>
						 
							<ul id="plUL">
								
					<li class="nostyle"><div class="plTitle">1</div></li>
					<li class="nostyle"><div class="plTitle">2</div></li>							                                <li class="nostyle"><div class="plTitle">3</div></li>
					<li class="nostyle"><div class="plTitle">4</div></li>
					<li class="nostyle"><div class="plTitle">5</div></li>
                                        <li class="nostyle"><div class="plTitle">6</div></li>
                                                        
						</ul>
					</div>


						
					</div>
					
				</div>
			</div>
			
		</div>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="/js/libs/jquery-1.8.0.min.js"><\/script>')</script>
		<script type="text/javascript">
			jQuery(function($) {
				var supportsAudio = !!document.createElement('audio').canPlayType;
				if(supportsAudio) {
					var index = 0,
					playing = false;
					mediaPath = '/how_to/assets/media/audio/',
					extension = '',
					tracks = [


						{"name":"1","file":"bgmusic"},
						{"name":"2","file":"bgmusic1"},
						{"name":"3","file":"bgmusic2"},
						{"name":"4","file":"bgmusic3"},
						{"name":"5","file":"bgmusic4"},
                                                {"name":"6","file":"bgmusic5"}
					],
					trackCount = tracks.length,
					npAction = $('#npAction'),
					npTitle = $('#npTitle'),
					audio = $('#audio1').bind('play', function() {
						playing = true;
						npAction.text('Now Playing:');
					}).bind('pause', function() {
						playing = false;
						npAction.text('Paused:');
					}).bind('ended', function() {
						npAction.text('Paused:');
						if((index + 1) < trackCount) {
							index++;
							loadTrack(index);
							audio.play();
						} else {
							audio.pause();
							index = 0;
							loadTrack(index);
						}
					}).get(0),
					btnPrev = $('#btnPrev').click(function() {
						if((index - 1) > -1) {
							index--;
							loadTrack(index);
							if(playing) {
								audio.play();
							}
						} else {
							audio.pause();
							index = 0;
							loadTrack(index);
						}
					}),
					btnNext = $('#btnNext').click(function() {
						if((index + 1) < trackCount) {
							index++;
							loadTrack(index);
							if(playing) {
								audio.play();
							}
						} else {
							audio.pause();
							index = 0;
							loadTrack(index);
						}
					}),
					li = $('#plUL li').click(function() {
						var id = parseInt($(this).index());
						if(id !== index) {
							playTrack(id);
						}
					}),
					loadTrack = function(id) {
						$('.plSel').removeClass('plSel');
						$('#plUL li:eq(' + id + ')').addClass('plSel');
						npTitle.text(tracks[id].name);
						index = id;
						audio.src = mediaPath + tracks[id].file + extension;
					},
					playTrack = function(id) {
						loadTrack(id);
						audio.play();
					};
					
					extension = audio.canPlayType('audio/mpeg') ? '.mp3' : audio.canPlayType('audio/ogg') ? '.ogg' : '';

					loadTrack(index);
				}

				$('#useLegend').click(function(e) {
					e.preventDefault();
					$('#use').slideToggle(300, function() {
						$('#useSpanSpan').text(($('#use').css('display') == 'none' ? 'show' : 'hide'));
					});
				});
			});
		</script>
	</body>
</html>
