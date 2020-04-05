<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta name="description" content="Responsive Admin Template">
<meta name="author" content="SmartUniversity">
<title>Insert Depart |</title>
<!-- google font -->
<link href=" <c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"/>" rel="stylesheet" type="text/css">
<!-- icons -->
<link href="<c:url value="/assets/plugins/simple-line-icons/simple-line-icons.min.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/fonts/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/fonts/material-design-icons/material-icon.css"/>" rel="stylesheet" type="text/css">
<!--bootstrap -->
<link href="<c:url value="/assets/plugins/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>" rel="stylesheet" type="text/css">
<!-- Material Design Lite CSS -->
<link rel="stylesheet" href="<c:url value="/assets/plugins/material/material.min.css"/>">
<link rel="stylesheet" href="<c:url value="/assets/css/material_style.css"/>">
<!-- animation -->
<link href="<c:url value="/assets/css/pages/animate_page.css" />" rel="stylesheet">
<!-- Theme Styles -->

<link href="<c:url value="/assets/css/style.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/assets/css/plugins.min.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/assets/css/pages/formlayout.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/assets/css/responsive.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/assets/css/theme-color.css"/>" rel="stylesheet" type="text/css">
<!-- favicon -->
<link rel="shortcut icon" href="<c:url value="/assets/img/favicon.ico"/>">
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>
<!-- END HEAD -->
<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
	<div class="page-wrapper">
		<!-- start header -->
		<%@include file="/blocks/header.jsp"%>
		<!-- end header -->
		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
			<%@include file="/blocks/sidebar.jsp"%>
			<!-- end sidebar menu -->
			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar">
						<div class="page-title-breadcrumb">
							<div class=" pull-left">
								<div class="page-title">INSERT</div>
								<p style='color: red; font-weight: bold'></p>
								<p style='color: green; font-weight: bold'></p>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i> &nbsp; <a class="parent-item" href="index.html">Trang Chủ</a> &nbsp; <i class="fa fa-angle-right"></i></li>
								<li><a class="parent-item" href="">Insert</a> &nbsp; <i class="fa fa-angle-right"></i></li>
								<li class="active">Insert</li>
							</ol>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="card card-box">
								<div class="card-head">
									<header>Insert</header>
									<button id="panel-button" class="mdl-button mdl-js-button mdl-button--icon pull-right" data-upgraded=",MaterialButton">
										<i class="material-icons">more_vert</i>
									</button>
									<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" data-mdl-for="panel-button">
										<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i> Action</li>
										<li class="mdl-menu__item"><i class="material-icons">print</i> Another action</li>
										<li class="mdl-menu__item"><i class="material-icons">favorite</i> Something else here</li>
									</ul>
								</div>
								<div class="card-body " id="bar-parent">
									<div class="alert label-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										${message1}${message2}${message3}
									</div>
									<form:form action="insert-record.htm" modelAttribute="record">
										<div class="form-group">
											<label for="simpleFormEmail">ID</label>
											<form:input path="id" class="form-control" id="simpleFormaphongban" />
											<form:errors path="id" />
										</div>
										<div class="form-group">
                                                <label for="simpleFormPassword">Thành Tích</label>
                                                <div class="radio radio-aqua">
                                                    <form:radiobutton path="type" value="false" label="Kỉ Luật"/>
                                                </div>
                                                <div class="radio radio-aqua">
                                                    <form:radiobutton path="type" value="true" label="Khen Thưởng" />
                                                </div>
                                                <form:errors path="type" />
                                        </div>
                                        <div class="form-group">
										 <label for="simpleFormEmail">Mã Nhân Viên</label>
											<form:select path="staff.id" items="${staffs}" itemValue="id" itemLabel="id"  class="form-control" id="select-expand-node-levels"/>
										</div>
										<button type="submit" class="btn btn-primary" name="_action">
											<i class="fa fa-plus-square"></i> Thêm Mới
										</button>

									</form:form>
								</div>
							</div>
						</div>
					</div>
					<!-- end page content -->
					<!-- start chat sidebar -->
					<div class="chat-sidebar-container" data-close-on-body-click="false">
						<div class="chat-sidebar">
							<ul class="nav nav-tabs">
								<li class="nav-item"><a href="#quick_sidebar_tab_1" class="nav-link active tab-icon" data-toggle="tab"> <i class="material-icons">chat</i> Chat <span class="badge badge-danger">4</span>
								</a></li>
								<li class="nav-item"><a href="#quick_sidebar_tab_3" class="nav-link tab-icon" data-toggle="tab"> <i class="material-icons">settings</i> Settings
								</a></li>
							</ul>
							<div class="tab-content">
								<!-- Start User Chat -->
								<div class="tab-pane active chat-sidebar-chat in active show animated slideInRight" role="tabpanel" id="quick_sidebar_tab_1">
									<div class="chat-sidebar-list">
										<div class="chat-sidebar-chat-users slimscroll-style" data-rail-color="#ddd" data-wrapper-class="chat-sidebar-list">
											<div class="chat-header">
												<h5 class="list-heading">Online</h5>
											</div>
											<ul class="media-list list-items">
												<li class="media"><img class="media-object" src="assets/img/user/user3.jpg" width="35" height="35" alt="..."> <i class="online dot"></i>
													<div class="media-body">
														<h5 class="media-heading">John Deo</h5>
														<div class="media-heading-sub">Spine Surgeon</div>
													</div></li>
												<li class="media">
													<div class="media-status">
														<span class="badge badge-success">5</span>
													</div> <img class="media-object" src="assets/img/user/user1.jpg" width="35" height="35" alt="..."> <i class="busy dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Rajesh</h5>
														<div class="media-heading-sub">Director</div>
													</div>
												</li>
												<li class="media"><img class="media-object" src="assets/img/user/user5.jpg" width="35" height="35" alt="..."> <i class="away dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Jacob Ryan</h5>
														<div class="media-heading-sub">Ortho Surgeon</div>
													</div></li>
												<li class="media">
													<div class="media-status">
														<span class="badge badge-danger">8</span>
													</div> <img class="media-object" src="assets/img/user/user4.jpg" width="35" height="35" alt="..."> <i class="online dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Kehn Anderson</h5>
														<div class="media-heading-sub">CEO</div>
													</div>
												</li>
												<li class="media"><img class="media-object" src="assets/img/user/user2.jpg" width="35" height="35" alt="..."> <i class="busy dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Sarah Smith</h5>
														<div class="media-heading-sub">Anaesthetics</div>
													</div></li>
												<li class="media"><img class="media-object" src="assets/img/user/user7.jpg" width="35" height="35" alt="..."> <i class="online dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Vlad Cardella</h5>
														<div class="media-heading-sub">Cardiologist</div>
													</div></li>
											</ul>
											<div class="chat-header">
												<h5 class="list-heading">Offline</h5>
											</div>
											<ul class="media-list list-items">
												<li class="media">
													<div class="media-status">
														<span class="badge badge-warning">4</span>
													</div> <img class="media-object" src="assets/img/user/user6.jpg" width="35" height="35" alt="..."> <i class="offline dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Jennifer Maklen</h5>
														<div class="media-heading-sub">Nurse</div>
														<div class="media-heading-small">Last seen 01:20 AM</div>
													</div>
												</li>
												<li class="media"><img class="media-object" src="assets/img/user/user8.jpg" width="35" height="35" alt="..."> <i class="offline dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Lina Smith</h5>
														<div class="media-heading-sub">Ortho Surgeon</div>
														<div class="media-heading-small">Last seen 11:14 PM</div>
													</div></li>
												<li class="media">
													<div class="media-status">
														<span class="badge badge-success">9</span>
													</div> <img class="media-object" src="assets/img/user/user9.jpg" width="35" height="35" alt="..."> <i class="offline dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Jeff Adam</h5>
														<div class="media-heading-sub">Compounder</div>
														<div class="media-heading-small">Last seen 3:31 PM</div>
													</div>
												</li>
												<li class="media"><img class="media-object" src="assets/img/user/user10.jpg" width="35" height="35" alt="..."> <i class="offline dot"></i>
													<div class="media-body">
														<h5 class="media-heading">Anjelina Cardella</h5>
														<div class="media-heading-sub">Physiotherapist</div>
														<div class="media-heading-small">Last seen 7:45 PM</div>
													</div></li>
											</ul>
										</div>
									</div>
									<div class="chat-sidebar-item">
										<div class="chat-sidebar-chat-user">
											<div class="page-quick-sidemenu">
												<a href="javascript:;" class="chat-sidebar-back-to-list"> <i class="fa fa-angle-double-left"></i> Back
												</a>
											</div>
											<div class="chat-sidebar-chat-user-messages">
												<div class="post out">
													<img class="avatar" alt="" src="assets/img/dp.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:10</span> <span class="body-out"> could you send me menu icons ? </span>
													</div>
												</div>
												<div class="post in">
													<img class="avatar" alt="" src="assets/img/user/user5.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:10</span> <span class="body"> please give me 10 minutes. </span>
													</div>
												</div>
												<div class="post out">
													<img class="avatar" alt="" src="assets/img/dp.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:11</span> <span class="body-out"> ok fine :) </span>
													</div>
												</div>
												<div class="post in">
													<img class="avatar" alt="" src="assets/img/user/user5.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:22</span> <span class="body">Sorry for the delay. i sent mail to you. let me know if it is ok or not.</span>
													</div>
												</div>
												<div class="post out">
													<img class="avatar" alt="" src="assets/img/dp.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span> <span class="body-out"> it is perfect! :) </span>
													</div>
												</div>
												<div class="post out">
													<img class="avatar" alt="" src="assets/img/dp.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span> <span class="body-out"> Great! Thanks. </span>
													</div>
												</div>
												<div class="post in">
													<img class="avatar" alt="" src="assets/img/user/user5.jpg">
													<div class="message">
														<span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:27</span> <span class="body"> it is my pleasure :) </span>
													</div>
												</div>
											</div>
											<div class="chat-sidebar-chat-user-form">
												<div class="input-group">
													<input type="text" class="form-control" placeholder="Type a message here...">
													<div class="input-group-btn">
														<button type="button" class="btn deepPink-bgcolor">
															<i class="fa fa-arrow-right"></i>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End User Chat -->
								<!-- Start Setting Panel -->
								<div class="tab-pane chat-sidebar-settings animated slideInUp" role="tabpanel" id="quick_sidebar_tab_3">
									<div class="chat-sidebar-settings-list slimscroll-style">
										<div class="chat-header">
											<h5 class="list-heading">Layout Settings</h5>
										</div>
										<div class="chatpane inner-content ">
											<div class="settings-list">
												<div class="setting-item">
													<div class="setting-text">Sidebar Position</div>
													<div class="setting-set">
														<select class="sidebar-pos-option form-control input-inline input-sm input-small ">
															<option value="left" selected="selected">Left</option>
															<option value="right">Right</option>
														</select>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Header</div>
													<div class="setting-set">
														<select class="page-header-option form-control input-inline input-sm input-small ">
															<option value="fixed" selected="selected">Fixed</option>
															<option value="default">Default</option>
														</select>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Sidebar Menu</div>
													<div class="setting-set">
														<select class="sidebar-menu-option form-control input-inline input-sm input-small ">
															<option value="accordion" selected="selected">Accordion</option>
															<option value="hover">Hover</option>
														</select>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Footer</div>
													<div class="setting-set">
														<select class="page-footer-option form-control input-inline input-sm input-small ">
															<option value="fixed">Fixed</option>
															<option value="default" selected="selected">Default</option>
														</select>
													</div>
												</div>
											</div>
											<div class="chat-header">
												<h5 class="list-heading">Account Settings</h5>
											</div>
											<div class="settings-list">
												<div class="setting-item">
													<div class="setting-text">Notifications</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-1"> <input type="checkbox" id="switch-1" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Show Online</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-7"> <input type="checkbox" id="switch-7" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Status</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-2"> <input type="checkbox" id="switch-2" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">2 Steps Verification</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-3"> <input type="checkbox" id="switch-3" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="chat-header">
												<h5 class="list-heading">General Settings</h5>
											</div>
											<div class="settings-list">
												<div class="setting-item">
													<div class="setting-text">Location</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-4"> <input type="checkbox" id="switch-4" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Save Histry</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-5"> <input type="checkbox" id="switch-5" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
												<div class="setting-item">
													<div class="setting-text">Auto Updates</div>
													<div class="setting-set">
														<div class="switch">
															<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-6"> <input type="checkbox" id="switch-6" class="mdl-switch__input" checked>
															</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end chat sidebar -->
				</div>
			</div>
			<!-- end page container -->
			<!-- start footer -->
			<%@include file="/blocks/footer.jsp"%>
			<!-- end footer -->
		</div>
	</div>
	<!-- start js include path -->
	<script src="<c:url value="/assets/plugins/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="/assets/plugins/popper/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/plugins/jquery-blockui/jquery.blockui.min.js"/>"></script>
	<script src="<c:url value="/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>"></script>
	<script src="<c:url value="/assets/plugins/jquery-validation/js/jquery.validate.min.js"/>"></script>
	<script src="<c:url value="/assets/plugins/jquery-validation/js/additional-methods.min.js"/>"></script>
	<!-- bootstrap -->
	<script src="<c:url value="/assets/plugins/bootstrap/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"/>"></script>
	<!-- Common js-->
	<script src="<c:url value="/assets/js/app.js"/>"></script>
	<script src="<c:url value="/assets/js/layout.js"/>"></script>
	<script src="<c:url value="/assets/js/theme-color.js"/>"></script>
	<script src="<c:url value="/assets/js/pages/validation/form-validation.js"/>"></script>
	<!-- Material -->
	<script src="<c:url value="/assets/plugins/material/material.min.js"/>"></script>
	<!-- animation -->
	<script src="<c:url value="/assets/js/pages/ui/animations.js"/>"></script>
	<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"/>"></script>
	<!-- end js include path -->
</body>
</html>
