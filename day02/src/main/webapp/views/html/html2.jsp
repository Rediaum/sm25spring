<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Field --%>
<div class="col-sm-9">
    <h2>HTML2 Page</h2>

    <div class="container">
        <div class="dropdown" style="margin-top:20px;">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                Dropdown button
            </button>
            <div class="dropdown-menu">
                <h5 class="dropdown-header">Dropdown header</h5>
                <a class="dropdown-item" href="#">Link 1</a>
                <a class="dropdown-item" href="#">Link 2</a>
                <a class="dropdown-item" href="#">Link 3</a>
                <h5 class="dropdown-header">Dropdown header</h5>
                <a class="dropdown-item" href="#">Another link</a>
            </div>
        </div>
    </div>


    <div class="container">
        <form class="form-inline" action="/action_page.php" style="margin-top:20px;">
            <label for="email2" class="mb-2 mr-sm-2">Email:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="email2" placeholder="Enter email" name="email">
            <label for="pwd2" class="mb-2 mr-sm-2">Password:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="pwd2" placeholder="Enter password" name="pswd">
            <div class="form-check mb-2 mr-sm-2">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" name="remember"> Remember me
                </label>
            </div>
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form>
    </div>


    <div class="container">
        <form action="/action_page.php" style="margin-top:20px;">
            <div class="form-group">
                <label for="usr">Name:</label>
                <input type="text" class="form-control" id="usr" name="username">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

</div>
