<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(function(){
	$.get("show",function(data){
		var str = "";
		for(var i = 0; i < data.length; i++){
			str += "<dl>";
			str += "<dt>" + data[i].mname + "</dt>";
			for(var j = 0; j < data[i].children.length; j++){
				str += "<dd>" + data[i].children[j].mname + "</dd>";
			}
			str += "</dl>"
		}
		
		$("body").html(str);
		
		//对所有的父菜单添加点击事件
/* 		$("dt").bind("click",function(){
			
		}); */
		
		$("dd").hide();
		
		$("dt").on('click', function() {
			$(this).siblings().toggle(1000);
		});
	});
});
</script>
</head>
<body>

</body>
</html>