<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="assets/css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <a style="right:10px; display: block; z-index: 1011;position: absolute;" href="#close-menu" id="close-menu"><i
                class="fa fa-times"></i></a>
        <ul class="sidebar-nav">

            <li>
                <a href="#" onclick="location.href('bussinessUserAdList.jsp')">My Adds</a>
            </li>
            <li>
                <a href="#">User Management</a>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <%-- <h1>Simple Sidebar</h1>
             <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
             <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>--%>
            <a href="#menu-toggle" class="btn btn-primary" id="menu-toggle"><i class="fa fa-bars"></i></a>


        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="assets/js/plugins/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Menu Toggle Script -->
<script>
    $("#close-menu").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        $("#menu-toggle").show();
    });
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        $("#menu-toggle").hide();
    });




</script>

</body>

</html>