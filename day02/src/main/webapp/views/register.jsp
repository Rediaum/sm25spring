<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Register Page --%>
<div class="col-sm-9">
    <h2>Register Page</h2>
    <h5>Input id, Password, name, email</h5>

    <form action="/mainregisterimpl" method="post">
        <div class="form-group" style="margin-top:20px; margin-right:500px;">
            <label for="id">ID:</label>
            <input type="text" class="form-control" placeholder="Enter ID" id="id" name="custId">
        </div>
        <div class="form-group" style="margin-right:500px;">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="custPwd">
        </div>
        <div class="form-group" style="margin-right: 500px;">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter Name" id="name" name="custName">
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>
