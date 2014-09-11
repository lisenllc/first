<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">
#div1 {width:488px;height:70px;padding:10px;border:1px solid #aaaaaa;}
</style>
</head>
<!-- 
	设置元素为可拖放,首先，为了使元素可拖动，把 draggable 属性设置为 true .
	拖动什么 - ondragstart 和 setData(),然后，规定当元素被拖动时，会发生什么。ondragstart 属性调用了一个函数，drag(event)，它规定了被拖动的数据。
dataTransfer.setData() 方法设置被拖数据的数据类型和值,数据类型是 "Text"，值是可拖动元素的 id ("drag1").
	放到何处 - ondragover,ondragover 事件规定在何处放置被拖动的数据。默认地，无法将数据/元素放置到其他元素中。如果需要设置允许放置，我们必须阻止对元素的默认处理方式。
这要通过调用 ondragover 事件的 event.preventDefault() 方法.
	进行放置 - ondrop,当放置被拖数据时，会发生 drop 事件。,在上面的例子中，ondrop 属性调用了一个函数，drop(event).
代码解释：
    调用 preventDefault() 来避免浏览器对数据的默认处理（drop 事件的默认行为是以链接形式打开）
    通过 dataTransfer.getData("Text") 方法获得被拖的数据。该方法将返回在 setData() 方法中设置为相同类型的任何数据。
    被拖数据是被拖元素的 id ("drag1")
    把被拖元素追加到放置元素（目标元素）中
	
 -->
<script type="text/javascript">
	function allowDrop(ev)
	{
		ev.preventDefault();
	}
	
	function drag(ev)
	{
		ev.dataTransfer.setData("Text",ev.target.id);
	}
	
	function drop(ev)
	{
		ev.preventDefault();
		var data=ev.dataTransfer.getData("Text");
		ev.target.appendChild(document.getElementById(data));
	}
</script>
<body>

<p>请把 W3School 的图片拖放到矩形中：</p>

<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<br />
<img id="drag1" src="http://www.w3school.com.cn/i/w3school_banner.gif" draggable="true" ondragstart="drag(event)" />

</body>
</html>