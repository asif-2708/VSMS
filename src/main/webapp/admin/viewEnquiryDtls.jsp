<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="com.vehicles.EnquiryDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.vehicles.DbConnect"%>
<%@page import="com.vehicles.EnquiryDAO"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Enquiry Details - Vehicle Service Management System</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="../plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="../plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="dashboard.jsp" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">View Enquiry Details</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Full Screen Menu -->
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-controlsidebar-slide="true"
					href="#" role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> <img src=""
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Admin</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="../dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#">Admin &nbsp;&nbsp;</a> <a href="#"><i
							class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>

				<!-- Start Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="dashboard.jsp"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>Dashboard</p>
						</a></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-th"></i>
								<p>
									Mechanics <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="add_Mechanics.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Mechanics</p>
								</a></li>
								<li class="nav-item"><a href="manage_Mechanics.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Manage Mechanics</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-copy"></i>
								<p>
									Vehicle Category <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="add_Category.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Category</p>
								</a></li>
								<li class="nav-item"><a href="manage_Category.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Manage Category</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="regUser.jsp" class="nav-link">
								<i class="nav-icon fas fa-user"></i>
								<p>Register User</p>
						</a></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-tree"></i>
								<p>
									Service Request <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="new_Service.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>New Service</p>
								</a></li>
								<li class="nav-item"><a href="rejected_Service.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Rejected Service</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-columns"></i>
								<p>
									Servicing <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="pending_Servicing.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Pending</p>
								</a></li>
								<li class="nav-item"><a href="complete_Servicing.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Completed</p>
								</a></li>
								<li class="nav-item"><a href="all_Servicing.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>All Service</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-chart-pie"></i>
								<p>
									Customer Enquiry <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="notResponse_Enquiry.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Not Response Enquiry</p>
								</a></li>
								<li class="nav-item"><a href="response_Enquiry.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Response Enquiry</p>
								</a></li>
								<li class="nav-item"><a href="allResponse_Enquiry.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>All Response Enquiry</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="enquirySearch.jsp"
							class="nav-link"> <i class="nav-icon fas fa-search"></i>
								<p>Enquiry Search</p>
						</a></li>

						<li class="nav-item"><a href="serviceSearch.jsp"
							class="nav-link"> <i class="nav-icon fas fa-search"></i>
								<p>Service Search</p>
						</a></li>

						<li class="nav-item"><a href="changePassword.jsp"
							class="nav-link"> <i class="nav-icon fas fa-cogs"></i>
								<p>Change Password</p>
						</a></li>

						<li class="nav-item"><a href="../logout" class="nav-link">
								<i class="nav-icon fas fa-power-off"></i>
								<p>Logout</p>
						</a></li>

					</ul>
				</nav>
				<!-- End Sidebar Menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">View Enquiry Details</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
								<li class="breadcrumb-item active">View Enquiry Details</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->
			<%
				String msg = request.getParameter("msg");
				if ("valid".equals(msg)) {
			%>
			<script>
				alert("Your Enquiry Deatails has been Updated.");
			</script>
			<%
				}
			%>

			<!-- Main content -->
			<section class="content">
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">View Enquiry Details</h3>
					</div>
					<%
						int id = Integer.parseInt(request.getParameter("id"));
						try {
							Connection con = DbConnect.Connect();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery(
									"select * from enquiry join user on user.Email=enquiry.Email where enquiry.id='" + id + "'");
							while (rs.next()) {
					%>
					<!-- /.card-header -->
					<div class="card-body">
						<table border="1" class="table table-bordered mg-b-0">
							<tr>
								<th>Enquiry Number</th>
								<td><%=rs.getInt("EnquiryNumber")%></td>

								<th>Full Name</th>
								<td><%=rs.getString("FullName")%></td>
							</tr>

							<tr>
								<th>Enquiry Type</th>
								<td colspan="3"><%=rs.getString("EnquiryType")%></td>
							</tr>
							<tr>
								<th>Description</th>
								<td colspan="3"><%=rs.getString("Description")%></td>
							</tr>

							<tr>
								<th>Enquiry Date</th>
								<td><%=rs.getString("EnquiryDate")%></td>

								<%
									if (rs.getString("AdminStatus") == null) {
								%>
								<th>Admin Status</th>
								<td>Your Status is Pending</td>
								<%
									} else {
								%>
								<th>Admin Status</th>
								<td><%=rs.getString("AdminStatus")%></td>
								<%
									}
								%>
							</tr>
						</table>

						<table class="table mb-0">

							<%
								if (rs.getString("AdminStatus") == null) {
							%>
							<form action="adminResponse.jsp" method="post">
								<tr>
									<th>Admin Response :</th>
									<td><textarea name="AdminResponse" rows="6" cols="10"
											class="form-control" required></textarea></td>
								</tr>

								<tr>
									<th>Admin Status :</th>
									<td><select name="AdminStatus" class="form-control"
										required="true">
											<option value="Responded" selected="true">Responded</option>

									</select></td>
								</tr>
								<input type="hidden" name="id" value="<%=id%>">
								<tr align="center">
									<td colspan="2"><button type="submit" name="submit"
											class="btn btn-primary pd-x-20">Submit</button></td>
								</tr>
							</form>
							<%
								} else {
							%>

							<table border="1" class="table table-bordered mg-b-0">
								<tr>
									<th>Admin Response</th>
									<td><%=rs.getString("AdminResponse")%></td>
								</tr>
								<tr>
								<tr>
									<th>Admin Remark date</th>
									<td><%=rs.getString("AdminRemarkdate")%></td>
								</tr>
							</table>

							<%
								}
							%>
						</table>
					</div>
					<%
						}
						} catch (Exception e) {
							System.out.println(e);
						}
					%>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; <a href="#">Vehicle Service
					Management System</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="../plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="../plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="../plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="../plugins/moment/moment.min.js"></script>
	<script src="../plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="../plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="../dist/js/pages/dashboard.js"></script>
</body>
</html>
