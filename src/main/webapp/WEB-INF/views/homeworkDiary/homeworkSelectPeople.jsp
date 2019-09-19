<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<input type="text" id="userNo2" value="${ loginUser.userNo }" hidden>
	<h1>별님반</h1>
	<hr>
	<div>
	
	<label>전체 선택
		<input type="checkbox" name="chkAll" id="checkAll" class="chkAll">
	</label>
	
	<label>
		<input type="checkbox" name="check" class="checkcheck">
	</label>
	
		<c:forEach var="l" items="${list}">
			<div>
				<table class="tq">
				<tr class="first">
					<td class="tqtq"><c:out value="${l.ChildrenName}"/></td>
				</tr>
			</table>
			</div>
			
		</c:forEach>
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