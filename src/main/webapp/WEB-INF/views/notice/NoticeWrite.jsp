<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	.drugRequestArea{
		
	}
	
	.pageName table{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	
	.pageName tr td:first-child{
		width:60%;
	}
	
	.pageName img{
		width:30px;
		height:30px;
	}
	
	.pageName button{
		background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
	}
	
	.noticeForm{
		background:#fff;
		padding:30px;
		padding-left:30px;
	}
	
	.noticeForm table{
		width:100%;
		
	}
	.noticeForm th{
		font-size: 1.5em;
		text-align: left;
		padding-left: 10px;
		height:50px;
		vertical-align: bottom;
	}
	
	.noticeForm td{
		font-size: 1.2em;
	} 

	
	.noticeForm input{
		border:1px solid #bbb;
	}
	
	.noticeForm textarea{
		border:1px solid #bbb;
	}

	

	.fileList label{
		background:#fa5448;
		color:white;
		width:70px;
		height:35px;
		border-radius: 5px;
		text-align:center;
		padding-top:5px;
		margin-top:20px;
		margin-left: 5%;
		margin-right: 5%;
	}
	
	.fileList input{
		background:#fff;
		width:40%;
		height:30px;
		color:#000;
		border:1px solid white;
		border-bottom:1px solid #de2c41;
		padding-top:5px;
		margin-top:20px;
		
	}

	.noticeBtnArea{
		width:100%;
		text-align: center;
	}
	
	.noticeBtnArea table{
		width:100%;
	}
	
	.noticeBtnArea td{
		width:50%;
		text-align: center;
	}
	
	.noticeBtnArea input{
		background:#fa5;
		border:none;
		border-radius: 5px;
		width:200px;
		height:40px;
		color:#fff;
		
	
	}
	
	.className{
		width:100%;
		text-align: center;
		background:#fa5448 ;
		border:#fa5448;
		color:white;
	}
	
	.selectClass{
		width:15px;
		height:15px;
	}
	.nonedisplay{
		
	}
</style>
<script>
	$(function(){
		$("#selectFile").on('change', function(){
			var text = $(this).val();
			$(".fileName").val(text);
		});
	});
	
	
	
	
	
</script>

</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table style="width:100%;">
				<tr>
  					<td style="vertical-align: middle;">
						<p style="font-weight:bold; font-size:20px">공지사항 작성</p>
					</td>
					
				</tr>
			</table>
		</div>
		<hr />

		<form action="NoticeWrite.no" method="post" enctype="multipart/form-data">

			<div class="noticeForm">
				<table>
					<tr>
						<th>제목</th>
					</tr>
					<tr>
						<td><textarea placeholder="제목을 입력해 주세요" name="boardTitle" class="Title" style="width:100%; height:40px; border:1px solid #dadada; border-radius:4px; padding:5px 10px"></textarea></td>
					</tr>
					<tr>
						<th>반 선택</th>
					</tr>
				<c:forEach var="i" items="${ selectWho }">
					<tr>
						<td style="margin-left:2px; border:1px solid #dadada; padding: 12px 20px; margin-bottm:4px; border-radius:10px">
						<input type="radio"  name="kinderNum" class="selectClass" value="${i.kinderNum }"/>원 공지</td>
						<td><input type="hidden" name="kinderNum" value="${i.kinderNum }"/></td>
					</tr>
					
					<tr>
						<td style="margin-left:2px; border:1px solid #dadada; padding: 12px 20px; margin-bottm:4px; border-radius:4px">
						<input type="radio" name="classNum" class="selectClass" value="${i.classNum}"/>우리 반 공지 </td>
						
					</tr>
				</c:forEach>
					<tr>
						<th>내용<i class="far fa-comment-alt" style="size:10px; margin-right:3px"></i></th>
					</tr>
					<tr class="nonedisplay">
					
					</tr>
					<tr>
						<td><textarea name="boardContent" id="contents" rows="7" placeholder="내용을 입력해 주세요" style="width:100%; border:1px solid #dadada;  border-radius:4px"></textarea></td>
					</tr>
					<tr>
						<th>파일첨부</th>
					</tr>
					<tr>
						<td>
							<div class="fileList" style="width:100%;">
								<label for="selectFile">파일선택</label>
								<input type="file" value="추가" name="attachfile"id="selectFile" class="selectFile" multiple/>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<hr/>
			<br><br>
			<div class="noticeBtnArea">
				<table>
					<tr>
						<td>
							<input type="reset" value="취소"/>
						</td>
						<td>
							<input type="submit" value="보내기"/>
						</td>
					</tr>
				</table>
						<br><br><br><br><br>
			</div>
		</form>
	</div>
	
	
</body>
</html>






























