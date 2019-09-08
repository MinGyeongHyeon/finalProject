<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>별님반</h1>
	<hr>
	<div>
	
	<label>전체 선택
		<input type="checkbox" name="chkAll" id="checkAll" class="chkAll">
	</label>
	
	<label>
		<input type="checkbox" name="check" class="checkcheck">
	</label>
	
	<label>
		<input type="checkbox" name="check" class="checkcheck">
	</label>
	
	<label>
		<input type="checkbox" name="check" class="checkcheck">
	</label>
	
	</div>
</body>
<script>
	$('#checkAll').change(function(){
		if($(this).prop('checked')){
	 		
			$('.checkcheck').attr("checked",true);
		}else{
			
			$('.checkcheck').attr("checked",false);
			
		}
		
	});

</script>
</html>