<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/mainCss.css">
</head>
<body>
	<jsp:include page="../common/teacherHeader.jsp"/>
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	
	<div class="contentsArea">
	<div class="mainArea">
		<table style="margin:0 suto; width:100%;">
			<tr class="firstTr">
				<td colspan="3">
					<div class="managementTitle">
						<table class="mmanagementTable" style="width:100%; background:#ddd;">
							<tr>
							<th style="text-align: left;">교사 관리</th>
							<th style="text-align:right; color:#aaa;">
							<label for="">더보기 ></label>
							</th>
							</tr>
						</table>
						<br />
						<table class="managementContentsTable">
							<tr>
								<td>승인이 완료된 교사</td>
								<td>0명</td>
							</tr>
							<tr><td><p></p></td></tr>
							<tr>
								<td>승인 대기중인 교사</td>
								<td>0명</td>
							</tr>
						</table>
						<br />
					</div>
				</td>
				<td colspan="3">
					<div class="managementTitle">
						<table class="mmanagementTable" style="width:100%; background:#ddd">
							<tr>
							<th style="text-align: left; font-size: bold;">교사 관리</th>
							<th style="text-align:right; font-size:bold; color:#aaa;">
							<label for="">더보기 ></label>
							</th>
							</tr>
						</table>
						<br />
						<table class="managementContentsTable">
							<tr>
								<td>승인이 완료된 원생</td>
								<td>0명</td>
							</tr>
							<tr><td><p></p></td></tr>
							<tr>
								<td>승인 대기중인 원생</td>
								<td>0명</td>
							</tr>
						</table>
						<br />
					</div>
				</td>
			</tr>
			<tr>
				<!-- 최근 공지사항 -->
				<td colspan="6" style="text-align: center;">
					<div style="margin:0 auto; width:100%;">
					<br />
						<table style="width:100%;">
							<tr>
								<td style="font-weight: bold;">최근 공지사항</td>
								<td style="text-align:right;">
									<label for="" >더보기 ></label>
								</td>
							</tr>
						</table>
						<br />
						<div class="noticeArea"> 
							<div class="notice">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td style=""> 3rd 공지사항</td>
									</tr><tr>
										<td>공지사항 내용입니다.</td>
									</tr><tr>
										<td> </td>
									</tr><tr>	
										<td>2019.08.16</td>
									</tr>
								</table>
							</div>
							<div class="notice" style="margin-left: 3%; margin-right: 3%;">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td> 3rd 공지사항</td>
									</tr><tr>
										<td>공지사항 내용입니다.</td>
									</tr><tr>
										<td> </td>
									</tr><tr>	
										<td>2019.08.16</td>
									</tr>
								</table>
							</div>
							<div class="notice">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td> 3rd 공지사항</td>
									</tr><tr>
										<td>공지사항 내용입니다.</td>
									</tr><tr>
										<td> </td>
									</tr><tr>	
										<td>2019.08.16</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="6" style="text-align: center;">
					<div class="underBtnArea">
						<div>공지사항</div>
						<div style="margin-left:3%; margin-right: 3%;">자주 묻는 질문</div>
						<div>관리자 문의</div>
					</div>
				</td>
			</tr>
		</table>
		
		
		
		
		
		
	</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>



















