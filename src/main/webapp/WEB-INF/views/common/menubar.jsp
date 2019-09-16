<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/1eba500ac5.js"></script>

<!-- 	<meta http-equiv="X-UA-Compatible" content="IE=edge" /> -->
<title>메뉴바</title>


<!-- 	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' /> -->
<link rel="icon" href="${ contextPath }/resources/assets/img/icon.ico"
	type="image/x-icon" />

<!-- Fonts and icons -->
<%-- <script src="${ contextPath }/resources/assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Open+Sans:300,400,600,700"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"], urls: ['assets/css/fonts.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script> --%>

<!-- CSS Files -->
<link rel="stylesheet"
	href="${ contextPath }/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ contextPath }/resources/assets/css/azzara.min.css">

<!-- CSS Just for demo purpose, don't include it in your project -->
<link rel="stylesheet"
	href="${ contextPath }/resources/assets/css/demo.css">

<style>
.sidebar .nav>.nav-item a[data-toggle=collapse][aria-expanded=true]:before,
	.sidebar .nav>.nav-item.active:hover>a:before, .sidebar .nav>.nav-item.active>a:before
	{
	background: #ff6666;
}

#kinName:hover {
	cursor: pointer;
	color: #fcfcfc;
}

#kinName {
	color: white;
	font-weight: bold;
}
</style>

</head>
<body>

	<c:if test="${ !empty loginUser }">
		<div class="main-header noprint" data-background-color="red">

			<div class="logo-header">

				<a href="main.pl" class="logo"> <label id="kinName">킨더유치원</label>
				
				</a><div>
		
				</div>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="collapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> <i class="fa fa-bars"></i>
					</span>
				</button>
				<button class="topbar-toggler more">
					<i class="fa fa-ellipsis-v"></i>
				</button>
				<div class="navbar-minimize">
					<button class="btn btn-minimize btn-rounded">
						<i class="fa fa-bars"></i>
					</button>
				</div>
			</div>

			<nav class="navbar navbar-header navbar-expand-lg">

				<div class="container-fluid">
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">

						<c:if test="${ loginUser.classification eq '원장님' }">


							<li class="nav-item dropdown hidden-caret"><a
								class="nav-link dropdown-toggle" href="#" id="messageDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fa fa-envelope"></i>
							</a>
								<ul class="dropdown-menu messages-notif-box animated fadeIn"
									aria-labelledby="messageDropdown">
									<li>
										<div
											class="dropdown-title d-flex justify-content-between align-items-center">
											새로운 쪽지 <a href="#" class="small">Mark all as read</a>
										</div>
									</li>
									<li>
										<div class="message-notif-scroll scrollbar-outer">
											<div class="notif-center">
												<a href="#">
													<div class="notif-img">
														<img
															src="${ contextPath }/resources/assets/img/jm_denis.jpg"
															alt="Img Profile">
													</div>
													<div class="notif-content">
														<span class="subject">Jimmy Denis</span> <span
															class="block"> How are you ? </span> <span class="time">5
															minutes ago</span>
													</div>
												</a> <a href="#">
													<div class="notif-img">
														<img
															src="${ contextPath }/resources/assets/img/chadengle.jpg"
															alt="Img Profile">
													</div>
													<div class="notif-content">
														<span class="subject">Chad</span> <span class="block">
															Ok, Thanks ! </span> <span class="time">12 minutes ago</span>
													</div>
												</a> <a href="#">
													<div class="notif-img">
														<img src="${ contextPath }/resources/assets/img/mlane.jpg"
															alt="Img Profile">
													</div>
													<div class="notif-content">
														<span class="subject">Jhon Doe</span> <span class="block">
															Ready for the meeting today... </span> <span class="time">12
															minutes ago</span>
													</div>
												</a> <a href="#">
													<div class="notif-img">
														<img src="${ contextPath }/resources/assets/img/talha.jpg"
															alt="Img Profile">
													</div>
													<div class="notif-content">
														<span class="subject">Talha</span> <span class="block">
															Hi, Apa Kabar ? </span> <span class="time">17 minutes ago</span>
													</div>
												</a>
											</div>
										</div>
									</li>
									<li><a class="see-all" href="noteMain.pl">쪽지함 이동<i
											class="fa fa-angle-right"></i>
									</a></li>
								</ul></li>
						</c:if>
						<li class="nav-item dropdown hidden-caret"><a
							class="nav-link dropdown-toggle" href="#" id="notifDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fa fa-bell"></i> <span
								class="notification">4</span>
						</a>
							<ul class="dropdown-menu notif-box animated fadeIn"
								aria-labelledby="notifDropdown">
								<li>
									<div class="dropdown-title">You have 4 new notification</div>
								</li>
								<li>
									<div class="notif-center">
										<a href="#">
											<div class="notif-icon notif-primary">
												<i class="fa fa-user-plus"></i>
											</div>
											<div class="notif-content">
												<span class="block"> New user registered </span> <span
													class="time">5 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-success">
												<i class="fa fa-comment"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Rahmad commented on Admin </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-img">
												<img
													src="${ contextPath }/resources/assets/img/profile2.jpg"
													alt="Img Profile">
											</div>
											<div class="notif-content">
												<span class="block"> Reza send messages to you </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-danger">
												<i class="fa fa-heart"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Farrah liked Admin </span> <span
													class="time">17 minutes ago</span>
											</div>
										</a>
									</div>
								</li>
								<li><a class="see-all" href="javascript:void(0);">See
										all notifications<i class="fa fa-angle-right"></i>
								</a></li>
							</ul></li>
						<li class="nav-item dropdown hidden-caret"><a
							class="dropdown-toggle profile-pic" data-toggle="dropdown"
							href="#" aria-expanded="false">
								<div class="avatar-sm">
									<img src="${ contextPath }/resources/assets/img/profile.jpg"
										alt="..." class="avatar-img rounded-circle">
								</div>
						</a>
							<ul class="dropdown-menu dropdown-user animated fadeIn">
								<li>
									<div class="user-box">
										<div class="avatar-lg">
											<img src="${ contextPath }/resources/assets/img/profile.jpg"
												alt="image profile" class="avatar-img rounded">
										</div>
										<div class="u-text">
											<h4>Hizrian</h4>
											<p class="text-muted">hello@example.com</p>
											<a href="profile.html"
												class="btn btn-rounded btn-danger btn-sm">View Profile</a>
										</div>
									</div>
								</li>
								<li>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">My Profile</a> <a class="dropdown-item" href="#">My
										Balance</a> <a class="dropdown-item" href="#">Inbox</a>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">Account Setting</a>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">Logout</a>
								</li>
							</ul></li>

					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar">
			<div class="sidebar-background"></div>
			<div class="sidebar-wrapper scrollbar-inner noprint">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<!-- 프로필 이미지 태그   -->
							<img src="${ contextPath }/resources/assets/img/profile.jpg"
								alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample"
								aria-expanded="true"> <span> ${ loginUser.userName }
									<span class="user-level">${ loginUser.classification }</span> <span
									class="caret"></span>
							</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample">
								<ul class="nav">
									<li><a href="#profile"> <span class="link-collapse">MyProfile</span>
									</a></li>
									<li><a href="#edit"> <span class="link-collapse">EditProfile</span>
									</a></li>
									<li><a href="#settings"> <span class="link-collapse">Settings</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item"><a href="main.pl"> <i
								class="fas fa-home"></i>
								<p>HOME</p>
						</a></li>

						<!--
						<li class="nav-section">
							<span class="sidebar-mini-icon">
							<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Components</h4>
						</li>
						 -->

						<li class="nav-item"><a href="Announcement.pl"> <i
								class="fas fa-bell"></i>
								<p>알림장</p>
						</a></li>
					<li class="nav-item">
						<a href="NoticeList.sn"> 		
						<i class="fas fa-bullhorn"></i>
								<p>공지사항</p>
						</a></li>

						<li class="nav-item"><a href="#"> <i
								class="far fa-images"></i>
								<p>앨범</p>
						</a></li>

						<li class="nav-item"><a href="scheduleMain.sc"> <i
								class="far fa-calendar-alt"></i>
								<p>일정표</p>
						</a></li>

						<li class="nav-item"><a href="#charts"> <i
								class="fas fa-utensils"></i>
								<p>식단표</p>
						</a></li>

						<li class="nav-item"><a href="drugMainView.pl"> <i
								class="fas fa-notes-medical"></i>
								<p>투약의뢰서</p>
						</a></li>

						<li class="nav-item"><a href="returnHomeMain.rh"> <i class="fas fa-child"></i>
								<p>귀가동의서</p>
						</a></li>

						<li class="nav-item"><a href="attendance.at"> <i
								class="far fa-calendar-check"></i>
								<p>출석부</p>
						</a></li>

						<li class="nav-item"><a href="#submenu"> <i
								class="fas fa-shuttle-van"></i>
								<p>승하차</p>
						</az></li>

						<li class="nav-item"><a href="businessLogMain.pl"> <i
								class="far fa-clipboard"></i>
								<p>일지관리</p>
						</a></li>

						<li class="nav-item"><a href="#submenu"> <i
								class="far fa-comments"></i>
								<p>채팅</p>
						</a></li>

						<c:if
							test="${ loginUser.classification == '원장님' || loginUser.classification == '관리자'}">
							<li class="nav-item"><a data-toggle="collapse"
								href="#submenu"> <i class="far fa-envelope"></i>
									<p>쪽지함</p> <span class="caret"></span>
							</a>
								<div class="collapse" id="submenu">
									<ul class="nav nav-collapse">
										<li><a href="noteMain.pl"> <span class="sub-item">받은
													쪽지함</span>
										</a></li>
										<li><a href="sentNoteList.nt"> <span class="sub-item">보낸
													쪽지함</span>
										</a></li>
										<li><a href="sendNote.pl"> <span class="sub-item">쪽지
													보내기</span>
										</a></li>
									</ul>
								</div></li>
						</c:if>


					</ul>
				</div>
			</div>
		</div>
	</c:if>
	<!-- End Sidebar -->
	<!--
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<h4 class="page-title">Starter Template</h4>
					</div>
					<div class="page-category">Starter Description</div>
				</div>
			</div>
		</div>
 -->
	<!-- 	</div> -->
	<!--   Core JS Files   -->
	<script src="${ contextPath }/resources/assets/js/core/jquery.3.2.1.js"></script>
	<script src="${ contextPath }/resources/assets/js/core/popper.min.js"></script>
	<script
		src="${ contextPath }/resources/assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<%-- 	<script src="${ contextPath }/resources/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>--%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	<script
		src="${ contextPath }/resources/assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

	<!-- Moment JS -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/moment/moment.min.js"></script>

	<!-- Chart JS -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- Bootstrap Toggle -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script
		src="${ contextPath }/resources/assets/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

	<!-- Google Maps Plugin -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/gmaps/gmaps.js"></script>

	<!-- Sweet Alert -->
	<script
		src="${ contextPath }/resources/assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Azzara JS -->
	<%-- <script src="${ contextPath }/resources/assets/js/ready.min.js"></script> --%>

</body>
</html>