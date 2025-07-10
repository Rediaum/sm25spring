<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap 4 Website Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .fakeimg {
            height: 200px;
            background: #aaa;
        }
    </style>
</head>
<body>

<%-- Header Start --%>
<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>HTML5 & JavaScript</h1>
    <p>HTML5, CSS, JavaScript, jQuery, AJAX</p>
</div>
<%-- Header End --%>

<ul class="nav justify-content-end">
    <li class="nav-item">
        <a class="nav-link" href="#">Login</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Register</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
    </li>
</ul>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">HTML</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">CSS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">JavaScript</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">JQuery</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container" style="margin-top:30px; margin-bottom:30px;">
    <div class="row">
        <%-- Left Menu Start --%>
        <div class="col-sm-3">
            <p>Left Main</p>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
            </ul>
            <hr class="d-sm-none">
        </div>
            <%-- Left Menu End --%>

            <%-- Center Menu Start --%>
        <div class="col-sm-9">
            <h2>TITLE HEADING</h2>
            <h5>Title description, Sep 2, 2017</h5>
            <div class="fakeimg">Fake Image</div>
        </div>
            <%-- Center Menu End --%>
    </div>
</div>

<div class="text-center" style="backgroud-color:black; color:white; margin-bottom:0; max-height:10px;">
    <p>Footer</p>
</div>

</body>
</html>
