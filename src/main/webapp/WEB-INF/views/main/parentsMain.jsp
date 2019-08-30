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
	<jsp:include page="../common/menubar.jsp"/>
	<div class="mainArea" id="firstContentArea">
		<table style="margin:0 suto; width:100%;">
			<tr class="">
				<td colspan="3">
					<div class="diaryTitle">
					<br />
						<table style="width:100%;">
							<tr>
								<td style="font-weight: bold;">최근 알림장</td>
								<td style="text-align:right;">
									<label for="" >더보기 ></label>
								</td>
							</tr>
						</table>
						<br />
						<div class="diaryArea"> 
							<div class="diary">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td style="">08.19</td>
									</tr><tr>
										<td>공지사항 내용입니다.</td>
									</tr><tr>
										<td>킨더반</td>
									</tr>
								</table>
							</div>
							<div class="diary" style="margin-left: 3%; margin-right: 3%;">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td>08.18</td>
									</tr><tr>
										<td>알림장 내용입니다.</td>
									</tr><tr>
										<td>킨더반</td>
									</tr>
								</table>
							</div>
							<div class="diary">
								<table>
									<tr>
										<td>꽈뚜룹 선생님<p></p></td>
									</tr><tr>
										<td>08.17</td>
									</tr><tr>
										<td>알림장 내용입니다.</td>
									</tr><tr>
										<td>킨더반</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<!-- 최근 공지사항 -->
				<td colspan="3" style="text-align: center;">
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
										<td> 2ed 공지사항</td>
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
										<td> 1st 공지사항</td>
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
		</table>
	</div>
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>



















