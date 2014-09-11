<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<script type="text/javascript">
	(function(){
    	return videoControl = {
    				myVideo : document.getElementById("myVideo"),
    				
		    		playOrPause : function(){
		    			if(myVideo.paused){
		    				myVideo.play();
		    			}else{
		    				myVideo.pause();
		    			}
		    		},
		    		
		    		makeBig : function(){
		    			myVideo.width = 560;
		    		},
		    		
		    		makeSmall : function(){
		    			myVideo.width = 200;
		    		},
		    		
		    		makeNormal : function(){
		    			myVideo.width = 320;
		    		}
		    	
		    	};
    } )();

</script>
<body>
<!-- autoplay 字段播放
controls 浏览器提供视频控件（播放、暂停、音量、缩放）
loop 循环播放
poster 视频播放前显示的图片
preload 视频在页面加载时进行加载，并预备播放。如果使用 "autoplay"，则忽略该属性。
 -->
	<video id="myVideo" width="320" height="240" controls="controls" 
	    controls="controls" loop="loop" poster="http://www.w3school.com.cn/i/w3school_logo_black.gif">
		
		<source src="http://www.w3school.com.cn/i/movie.mp4" type="video/mp4">
		<source src="http://www.w3school.com.cn/i/movie.ogg" type="video/ogg" />
		<source src="/example/html5/mov_bbb.mp4" type="video/mp4" />
        <source src="/example/html5/mov_bbb.ogg" type="video/ogg" />
		Your browser does not support the video tag.
		
	</video>
 
 	<button onclick="videoControl.playOrPause()">播放/暂停</button> 
	<button onclick="videoControl.makeBig()">大</button>
	<button onclick="videoControl.makeNormal()">中</button>
	<button onclick="videoControl.makeSmall()">小</button>

</body>
</html>