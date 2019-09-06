<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>별님반</h1>
	<hr>
	<div>
	<ul class="select">
		<li class="selectpeople">
			<ul class="selectAll">전체 선택</ul>
			<li class="checkAllBtn"><input type="checkbox" name="chkAll"
				id="checkAll" class="chkAll"></li>
		</li>
	</ul>
	</div>
</body>
<script>
	$('#checkAll').change(function(){
		
		if($(this.prop('checked')){
	 		
			$('.checkPeopleAll').attr("checked",true);
		})else{
			
			$('.checkPeopleAll').attr("checked",false);
			
		}
		
	});


</script>
</html>