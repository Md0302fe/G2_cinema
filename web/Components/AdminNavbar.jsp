<%-- 
    Document   : AdminNavbar
    Created on : Feb 28, 2024, 6:31:48 PM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="home">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Cinema - GG<sup>2</sup></div>
            </a>
            <!-- Divider -->

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <p class="nav-link" style="padding-left: 12px  ; margin: 0 ; font-weight: 800" >
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Movie Management</span></p>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
            </div>
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="AdminHomeServlet">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Add Movie</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="ListMovie">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Management Movies</span></a>
            </li>        

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <p class="nav-link" style="padding-left: 12px  ; margin: 0 ; font-weight: 800">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Schedules Management</span></p>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <li class="nav-item ">
                <a class="nav-link" href="setupschedules">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Set Up Schedules</span></a>
            </li>

            <li class="nav-item ">
                <a class="nav-link" href="Admin_ShowDate">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Management Show Date</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="SchedulesManagement">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Schedules Management</span></a>
            </li> 
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
    </body>
</html>
