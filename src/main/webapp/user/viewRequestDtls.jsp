<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	String email = session.getAttribute("email").toString();
	int uid = 1;
	String FullName = "";
	String MobileNo = "";
	String RegDate = "";

	try {
		Connection con = DbConnect.Connect();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
		if (rs.next()) {
			uid = rs.getInt(1);
			FullName = rs.getString(2);
			MobileNo = rs.getString(3);
			RegDate = rs.getString(6);
		}
	} catch (Exception e) {
		System.out.println(e);
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Request History - Vehicle Service Management System</title>

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

<script type="text/javascript">
  function printdata()
  {
    window.print();
  }
</script>

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
					href="userDashboard.jsp" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">View Request History</a></li>
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
			<center>
				<a href="#" class="brand-link"> <img src=""
					class="brand-image img-circle elevation-3" style="opacity: .8">
					<span class="brand-text font-weight-light">User Role</span>
				</a>
			</center>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="../img/image.png"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#"> <%
 	out.print(FullName);
 %>
						</a> <br> <a href="#"><i class="fa fa-circle text-success"></i>
							Online</a>
					</div>
				</div>

				<!-- Start Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="userDashboard.jsp"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>Dashboard</p>
						</a></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-th"></i>
								<p>
									Enquiry <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="enquiryForm.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Enquiry Form</p>
								</a></li>
								<li class="nav-item"><a href="enquiryHistory.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Enquiry History</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-copy"></i>
								<p>
									Service Request <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="requestForm.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Request Form</p>
								</a></li>
								<li class="nav-item"><a href="requestHistory.jsp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Request History</p>
								</a></li>
							</ul></li>

						<li class="nav-item"><a href="userChangePassword.jsp"
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
							<h1 class="m-0">View Request History</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="userDashboard.jsp">Home</a></li>
								<li class="breadcrumb-item active">Request History</li>
								<li class="breadcrumb-item active">View Request History</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">View Request History</h3>
					</div>
					<%
						int id = Integer.parseInt(request.getParameter("id"));
						int totalCharge =0;	
						try {
							Connection con1 = DbConnect.Connect();
							Statement st1 = con1.createStatement();
							ResultSet rs1 = st1
									.executeQuery("select * from  servicerequest where id='" + id + "' and Email='" + email + "'");
							while (rs1.next()) {
								totalCharge = rs1.getInt("ServiceCharge") + rs1.getInt("PartsCharge") + rs1.getInt("OtherCharge");
					%>
					<div class="card-body">
						<table border="1" class="table table-bordered mg-b-0">
							<tr>
								<th>Service Request Date</th>
								<td><%=rs1.getString("ServicerequestDate")%></td>

								<th>Service Number</th>
								<td><%=rs1.getString("ServiceNumber")%></td>
							</tr>
							
							<tr>
								<th>Category</th>
								<td><%=rs1.getString("Category")%></td>

								<th>Vehicle Name</th>
								<td><%=rs1.getString("VehicleName")%></td>
							</tr>
							
							<tr>
								<th>Vehicle Model</th>
								<td><%=rs1.getString("VehicleModel")%></td>

								<th>Vehicle Brand</th>
								<td><%=rs1.getString("VehicleBrand")%></td>
							</tr>
							
							<tr>
								<th>Vehicle Registration Number</th>
								<td><%=rs1.getString("VehicleRegno")%></td>

								<th>Service Date</th>
								<td><%=rs1.getString("ServiceDate")%></td>
							</tr>
							
							<tr>
								<th>Service Time</th>
								<td><%=rs1.getString("ServiceTime")%></td>

								<th>Delivery Type</th>
								<td><%=rs1.getString("DeliveryType")%></td>
							</tr>
							
							<tr>
								<th>Pickup Address</th>
								<td><%=rs1.getString("PickupAddress")%></td>

								<th>Service Request Date</th>
								<td><%=rs1.getString("ServicerequestDate")%></td>
							</tr>

							<tr>
								<th>Admin Remark</th>
								<%
								 	if(rs1.getString("AdminRemark") == null){
								%>
								<td>Not Update Yet</td>
								<%
								 	}else{
								%>
								<td><%=rs1.getString("AdminRemark")%></td>
								<%
								 	}
								%>
								
								<th>Admin Remark date</th>
								<%
								 	if(rs1.getString("AdminRemarkdate") == null){
								%>
								<td>Not Update Yet</td>
								<%
								 	}else{
								%>
								<td><%=rs1.getString("AdminRemarkdate")%></td>
								<%
								 	}
								%>								
							</tr>
							
							<tr>
							 <%
							  if(rs1.getString("ServiceCharge") == null){
							 %>
								<th>Service Charge</th>
								<td>0</td>
							<%
							  } else {
							%>
								<th>Service Charge</th>
								<td><%=rs1.getString("ServiceCharge")%></td>
							<%
							  }
							%>
							
							<%
							  if(rs1.getString("PartsCharge") == null){
							 %>
								<th>Parts Charge</th>
								<td>0</td>
							<%
							  } else {
							%>
								<th>Parts Charge</th>
								<td><%=rs1.getString("PartsCharge")%></td>
							<%
							  }
							%>							
							</tr>
							
							<tr>
							<%
							  if(rs1.getString("OtherCharge") == null){
							 %>
								<th>Other Charge(if any)</th>
								<td>0</td>
							<%
							  } else {
							%>
								<th>Other Charge(if any)</th>
								<td><%=rs1.getString("OtherCharge")%></td>
							<%
							  }
							%>	
								
								<th>Total Amount</th>
								<td><%out.print(totalCharge);%></td>
							</tr>						

						</table>
						<br>
						<p style="text-align: center;">
							<button type="text" name='print' id="print"
								onclick="return printdata();"
								class="btn btn-info btn-min-width mr-1 mb-1">Print</button>
						</p>												
					</div>
					<%
						}
						} catch (Exception e) {
							e.printStackTrace();
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
