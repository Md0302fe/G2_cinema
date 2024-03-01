<%-- 
    Document   : AddMovie
    Created on : Feb 27, 2024, 11:47:04 AM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/AddMovie.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/sb-admin-2.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <title>Moive Management</title>
    </head>
    <body>
        <div id="wrapper">
            <!-- Sidebar -->
            <%@include file="./Components/AdminNavbar.jsp" %> 
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <%@include file="./Components/AdminHeader.jsp" %>
                    <!----------- ADD MOVIES -------------->
                    <form action="AddMovie" method="post" enctype="multipart/form-data">
                        <div class="container-fluid">
                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">Management Movie</h1>
                            <div class="main_content1 font-semibold">
                                <div class="movie_detail">
                                    <table class="table table-bordered">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Image</th>
                                                <th scope="col">Release Date</th>
                                                <th scope="col">Category</th>
                                                <th scope="col">Duration</th>
                                                <th scope="col">National</th>
                                                <th scope="col">Language</th>
                                                <th scope="col">Rate</th>
                                                <th scope="col">Actor</th>
                                                <th scope="col">Director</th>
                                                <th scope="col">Description</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.list}" var="m">
                                                <tr>
                                                    <th scope="row">${m.id}</th>
                                                    <td>${m.name}</td>
                                                    <td><img src="./Assets/Image/Movies_Image/${m.movie_img}" width="150px" alt="alt"/></td>
                                                    <td>${m.release_date}</td>
                                                    <td>${m.list_category}</td>
                                                    <td>${m.duration}</td>
                                                    <td>${m.national}</td>
                                                    <td>${m.languages}</td>
                                                    <td>${m.rate}</td>
                                                    <td>${m.actors}</td>
                                                    <td>${m.director}</td>
                                                    <td><p>${m.description}</p></td>
                                                    <td>
                                                        <button type="button" class="w-100 mb-3 btn btn-primary" onclick="editItem(${m.id})">Edit</button>
                                                        <button type="button" class="w-100 btn btn-danger">Delete</button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- Content Row -->
                        </div>
                    </form>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->
            </div>
            <!-- End of Content Wrapper -->
        </div>   

        <script>
            function editItem(id) {
                window.location.href = "UpdateMovie?editItem=" + id;
            }
        </script>
    </body>
</html>
