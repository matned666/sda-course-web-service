<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="dynamic/css.jspf" %>


<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">

    <%@ include file="dynamic/navigationMain.jspf" %>
    <style>
        #content-wrapper {
            background-image: <c:url value='/resources/images/sidesculls.png'/>;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
    </style>
    <form name="send" id="editForm" method="post" action='<c:url value="/personList/${person.id}"/>'>

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
                        <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle"
                           data-toggle="dropdown"
                           href="#" id="userDropdown" role="button">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Imię Nazwisko</span>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div aria-labelledby="userDropdown"
                             class="dropdown-menu dropdown-menu-right shadow animated--grow-in">
                            <a class="dropdown-item" href="#">
                                <img src="<c:url value='/resources/images/steam-scull.png'/>"
                                     class="fas fa-comments fa-2x text-gray-300" alt="lol">
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <img src="<c:url value='/resources/images/steam-scull.png'/>"
                                     class="fas fa-comments fa-2x text-gray-300" alt="lol">
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <img src="<c:url value='/resources/images/steam-scull.png'/>"
                                     class="fas fa-comments fa-2x text-gray-300" alt="lol">
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" data-target="#logoutModal" data-toggle="modal" href="#">
                                <img src="<c:url value='/resources/images/steam-scull.png'/>"
                                     class="fas fa-comments fa-2x text-gray-300" alt="lol">
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Content Row -->
                <form name="send" method="post" action='<c:url value="/personList/${person.id}"/>'>
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label for="firstName" class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" value="${person.firstName}"
                                                   id="firstName" name="firstName">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" value="${person.lastName}"
                                                   id="lastName" name="lastName">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="github" class="col-2 col-form-label">URL Git</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" value="${person.github}" id="github"
                                                   name="github">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                                        <div class="col-10">
                                            <textarea class="form-control" rows="5" id="start"
                                                      name="start">${person.start}</textarea>
                                        </div>
                                    </div>

                                    <c:if test="${person.checkbox eq null}">
                                    <div class="form-group row">
                                        <label for="question" class="col-2 col-form-label">Czy kursant opanował
                                            jakieś technologie ?</label>
                                        <div class="col-1">
                                            <label class="radio-inline"><input type="radio" value="1"
                                                                               name="checkbox">TAK
                                            </label>
                                        </div>
                                        <div class="col-1">
                                            <label class="radio-inline"><input type="radio" value="0" name="checkbox"
                                                                               checked>
                                                NIE</label>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    </c:if>

                    <c:if test="${person.checkbox eq '0'}">
                    <div class="form-group row">
                        <label for="question" class="col-2 col-form-label">Czy kursant opanował
                            jakieś technologie ?</label>
                        <div class="col-1">
                            <label class="radio-inline"><input type="radio" value="1" name="checkbox">TAK
                            </label>
                        </div>
                        <div class="col-1">
                            <label class="radio-inline"><input type="radio" value="0" name="checkbox"
                                                               checked>
                                NIE</label>
                        </div>
                    </div>

            </div>
        </div>
    </div>
</c:if>

<c:if test="${person.checkbox eq '1'}">
    <div class="form-group row">
        <label for="question" class="col-2 col-form-label">Czy kursant opanował
            jakieś technologie ?</label>
        <div class="col-1">
            <label class="radio-inline"><input type="radio" value="1"
                                               name="checkbox" checked>TAK
            </label>
        </div>
        <div class="col-1">
            <label class="radio-inline"><input type="radio" value="0" name="checkbox">
                NIE</label>
        </div>
    </div>

    </div>
</c:if>








<c:if test="${person.checkbox eq '1'}">
    <!-- Content Row -->

    <div class="col-xl-12 col-md-12 mb-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">

                <div class="row">
                    <div class="col-2">
                        <label for="java" class="col-form-label">Java</label>
                        <input class="form-control" type="text" value="${person.java}"
                               id="java"
                               name="java">
                    </div>


                    <div class="col-2">
                        <label for="bestpractice" class="col-form-label">Wzorce projektowe</label>
                        <input class="form-control" type="text" value="${person.bestpractice}" id="bestpractice" name="bestpractice">
                    </div>


                    <div class="col-2">
                        <label for="tdd" class="col-form-label">TDD</label>
                        <input class="form-control" type="text" value="${person.tdd}" id="tdd"
                               name="tdd">
                    </div>


                    <div class="col-2">
                        <label for="question" class="col-form-label">Bazy danych SQL</label>
                        <input class="form-control" type="text" value="${person.question}" id="question" name="question">
                    </div>



                    <div class="col-2">
                        <label for="hibernate" class="col-form-label">Hibernate JPA</label>
                        <input class="form-control" type="text" value="${person.hibernate}" id="hibernate"
                               name="hibernate">
                    </div>


                    <div class="col-2">
                        <label for="html" class="col-form-label">HTML_CSS</label>
                        <input class="form-control" type="text" value="${person.html}" id="html" name="html">
                    </div>


                    <div class="col-2">
                        <label for="jsp" class="col-form-label">JSP</label>
                        <input class="form-control" type="text" value="${person.jsp}" id="jsp"
                               name="jsp">
                    </div>

                    <div class="col-2">
                        <label for="thymeleaf" class="col-form-label">Thymeleaf</label>
                        <input class="form-control" type="text" value="${person.thymeleaf}" id="thymeleaf"
                               name="thymeleaf">
                    </div>

                    <div class="col-2">
                        <label for="git" class="col-form-label">git</label>
                        <input class="form-control" type="text" value="${person.git}" id="git"
                               name="git">
                    </div>


                </div>
            </div>
        </div>
    </div>

</c:if>

<input class="btn btn-success pull-left" formmethod="post"  type="submit" value="Zapisz zmiany"
       id="searchButton">


<!-- Button to Open the Modal -->
<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
    Usuń kursanta
</button>
</form>
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="send" method="post" action='<c:url value="/editPerson/${person.id}"/>'>
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Czy na pewno chcesz usunąć osobę ?</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    Jeżeli usuniesz to już nie będzie odwrotu
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                </div>

        </form>
    </div>
</div>


</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->

<%@ include file="dynamic/board.jspf" %>
<%@ include file="dynamic/js.jspf" %>
</body>
</html>