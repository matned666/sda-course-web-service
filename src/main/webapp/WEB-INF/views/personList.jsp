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
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="sidebar-brand-text mx-1">
                    <h1>Javawro27 Web Project<sup>666</sup></h1> </div>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>


                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Imię nazwisko</span>

                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profil
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Wyloguj
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">


                <!-- Page Heading -->
                <div class="card-header py-3">

                <h2>Kursanci</h2><br>
                <p >Wszyscy kursanci biorący udział w szkoleniu - SDA | <a
                        target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>
                </div>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Tabela Kursantów</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table action-panel table-bordered" id="dataTable" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Imię</th>
                                    <th>Nazwisko</th>
                                    <th>URL Git</th>
                                    <th>Od czego się zaczęło</th>
                                    <th>Umiejętności</th>
                                    <th>Akcja</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Imię</th>
                                    <th>Nazwisko</th>
                                    <th>URL Git</th>
                                    <th>Od czego się zaczęło</th>
                                    <th>Umiejętności</th>
                                    <th>Akcja</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach items="${persons}" var="person">
                                    <tr>
                                        <td>${person.firstName}</td>
                                        <td>${person.lastName}</td>
                                        <td><a href="${person.github}" >
                                            <img src="<c:url value='/resources/images/ic_new_releases.png'/>" class="fas fa-check">
                                                              </a></td>
                                        <td>${person.start}</td>
                                        <td><a href="#" data-toggle="modal"
                                        data-target="#myModal${person.id}" role="button">
                                            <img src="<c:url value='/resources/images/ic_check_circle.png'/>" class="fas fa-check">
                                        </a></td>
                                        <td><a href='<c:url value="editPerson/${person.id}"/>'
                                               class="btn btn-secondary btn-sm" role="button">Edytuj</a>
                                        </td>
                                    </tr>






                                     <!-- The Modal -->
                                                                <div class="modal" id="myModal${person.id}">
                                                                    <div class="modal-dialog">
                                                                        <div class="modal-content">

                                                                                <!-- Modal Header -->
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title">${person.firstName} ${person.lastName}</h4>
                                                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                                </div>

                                                                                <!-- Modal body -->
                                                                                <div class="modal-body">



                                                                                  <!-- Project Card Example -->
                                                                                  <div class="card shadow mb-4">
                                                                                    <div class="card-header py-3">
                                                                                      <h6 class="m-0 font-weight-bold
                                                                                      text-primary">Umiejętności</h6>
                                                                                    </div>
                                                                                    <div class="card-body">
                                                                                      <h4 class="small
                                                                                      font-weight-bold">Java <span
                                                                                      class="float-right">${person.java}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-100 text-black-50" role="progressbar" style="width: ${person.java}%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                      <h4 class="small
                                                                                      font-weight-bold">Wzorce
                                                                                      projektowe
                                                                                       <span
                                                                                       class="float-right">${person.bestpractice}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-200 text-black-50" role="progressbar" style="width: ${person.bestpractice}%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                      <h4 class="small
                                                                                      font-weight-bold">TDD <span
                                                                                      class="float-right">${person.tdd}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-300 text-black-50" role="progressbar" style="width: ${person.tdd}%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                      <h4 class="small
                                                                                      font-weight-bold">Bazy danych SQL
                                                                                      <span class="float-right">${person.question}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-400 text-black-50" role="progressbar" style="width: ${person.question}%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>

                                                                                      <h4 class="small
                                                                                      font-weight-bold">Hibernate JPA
                                                                                      <span class="float-right">${person
                                                                                      .hibernate}%</span></h4>
                                                                                      <div class="progress">
                                                                                        <div class="progress-bar bg-gray-500 text-black-50" role="progressbar" style="width: ${person.hibernate}%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div><br>

                                                                                       <h4 class="small
                                                                                      font-weight-bold">HTML, CSS
                                                                                      <span class="float-right">${person.html}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-600" role="progressbar" style="width: ${person.html}%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                         <h4 class="small
                                                                                      font-weight-bold">JSP
                                                                                      <span class="float-right">${person.jsp}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-700" role="progressbar" style="width: ${person.jsp}%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                         <h4 class="small
                                                                                      font-weight-bold">Thymeleaf
                                                                                      <span class="float-right">${person.thymeleaf}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-800" role="progressbar" style="width: ${person.thymeleaf}%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>
                                                                                       <h4 class="small
                                                                                      font-weight-bold">GIT
                                                                                      <span class="float-right">${person.git}%</span></h4>
                                                                                      <div class="progress mb-4">
                                                                                        <div class="progress-bar bg-gray-900" role="progressbar" style="width: ${person.git}%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                                                      </div>

                                                                                    </div>
                                                                                  </div>





                                                                                </div>

                                                                                <!-- Modal footer -->
                                                                                <div class="modal-footer">
                                                                                   <a href='<c:url
                                                                                   value="editPerson/${person.id}"/>'>
                                                                                   <input type="submit" class="btn
                                                                                   btn-danger pull-left"
                                                                                   value="Poprawiam"/></a>
                                                                                </div>

                                                                        </div>
                                                                    </div>
                                                                </div>









                                </c:forEach>
                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>


            </div>




            <!-- /.container-fluid -->
            <div class="card-header py-3">


                <a href='<c:url value="/addNewPerson"/>' >
                    <span>
                        <img src="<c:url value='/resources/images/ic_person_add.png'/>" class="fas fa-check">
                    </span>

                </a>


            </div>


        </div>
        <!-- End of Main Content -->

        <%@ include file="dynamic/board.jspf" %>
        <%@ include file="dynamic/js.jspf" %>
</body>
</html>