<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="dynamic/css.jspf" %>


<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">

    <%@ include file="dynamic/navigationMain.jspf" %>


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="sidebar-brand-text mx-1"><h1>Javawro27 Web Project<sup>666</sup></h1></div>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">


                    <div class="topbar-divider d-none d-sm-block"></div>


                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
                           href="#" id="userDropdown" role="button">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Imię Nazwisko</span>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div aria-labelledby="userDropdown" class="dropdown-menu dropdown-menu-right shadow animated--grow-in">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" data-target="#logoutModal" data-toggle="modal" href="#">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <form name="send" method="post" action='<c:url value="/personList"/>'>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label for="firstName" class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" placeholder="uzupełnij imię"
                                                   id="firstName" name="firstName">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" placeholder="uzupełnij nazwisko"
                                                   id="lastName" name="lastName">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="github" class="col-2 col-form-label">URL Git</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" placeholder="uzupełnij url do gita"
                                                   id="github"
                                                   name="github">
                                        </div>
                                    </div>



                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                                        <div class="col-10">
                                        <textarea class="form-control" rows="5" id="start"
                                                  placeholder="napisz kilka słów co Cię zmotywowało aby zostać programistą..."
                                                  name="start"></textarea>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"/>
                </div>
            </form>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <%@ include file="dynamic/board.jspf" %>
        <%@ include file="dynamic/js.jspf" %>
</body>
</html>