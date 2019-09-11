<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>

#content{
float:right;
margin-right:20%;
margin-top:5%;
background:white;
width:50%;
}
#sidebar{
float:left;
margin-left:20%;
margin-top:5%;
}

#saveBtn{
margin-left:38%;
width:25%;
height:7%;
background:orange;
color:white;
border-radius:15px;
}
.change{
margin-left:5%;
width:90%;
margin:0 auto;
align:center;
}
.change > input{
width:100%;
height:3%;
border-radius:5px;
shadow:none;
}
h3{
margin-left:5%;
}
.teacher{
width:90%;
margin:0 auto;
text-align:center;
}
table th{
background:lightgray;
padding:3px;
color:white;
}
.btn{
width:30%;
margin:0 auto;
background:lightblue;
border-radius:5px;
color:white;
}
</style>
</head>
<header>
 <jsp:include page="../common/teacherHeader.jsp"/>
</header>
<body>
<%-- <jsp:include page="../common/menubar.jsp"/> --%>
	<div id="sidebar">
 	<jsp:include page="../common/directorManagementSideMenu.jsp"/> 
	</div>
	
	<input type="hidden" id="kinderNo" value="${ loginUser.userNo }"/>
	<div id="content">
	<div class="change">
	<h1>원생 관리</h1><hr>
	</div>
	<h3>미승인 원생</h3>
	<div>
	<table id="miteacher" class="teacher">
	<tr>
	<th>원생 이름</th>
	<th>담당 반</th>
	<th>승인 여부</th>
	</tr>
	<c:forEach var="i" items="${ listMe2 }" >
	<tr>
	<td>${ i.childrenName }</td>
	<td>
		<select class="className">
		<c:forEach var="b" items="${ listMe3 }">
			<option value="${ b.className }">${ b.className }</option>
		</c:forEach>
		</select>
	</td>
	<td><button class="btn" id="accept">승인</button>&nbsp;&nbsp;<button class="notaccept btn">거절</button></td>
	<td><input type="hidden" class="childrenNo" value="${ i.childrenNo }"/></td>
	</tr>
		</c:forEach>
	</table>
	</div>	
	<h3>승인이 완료된 원생</h3>
	<div>
	<table id="realteacher" class="teacher">
	<tr>
	<th>원생 이름</th>
	<th>담당 반</th>
	<th>연락처</th>
	
	<c:forEach var="name" items="${ listMe }" varStatus="test">
		<tr>
	
		<td>${ name.childrenName }</td>
		<td>${ name.className }</td>
		<td>${ name.phone }</td>
		</tr>
	</c:forEach>
	
	</tr>
	
	</table>
	</div>

	<br><br>
	<button id="saveBtn">저장</button><br><br><br>
	</div>
	
	
	<script>
		
		$('.btn').click(function(){
	
		var kinderNo = $('#kinderNo').val();
		var childrenNo = $(this).parent().next().children().val();
		var className = $(this).parent().prev().children().val();


		console.log(kinderNo);
		console.log(className);
		console.log(childrenNo);
		
		
		if(confirm("승인 하시겠습니까?")){
			
		$.ajax({
			url:"insertchildrenclass.kl",
			type:"post",
			data:{kinderNo:kinderNo,childrenNo:childrenNo,className:className},
			success:function(data){
				
				console.log(data);
				
				console.log(data.result);
				
				
				if(data.result == 1){
					alert("승인이 완료 되었습니다.");
						
					location.href="childrenMe.me?userNo="+ kinderNo;
					
				}
				
			}
			
			
		});
		
		}
			
			
			
		});
		
	</script>
	
</body>
</html>