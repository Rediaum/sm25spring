<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Register Page --%>
<div class="col-sm-9">
    <h2>Register Page</h2>
    <h5>Input id, Password, name, email</h5>

    <form action="/registerimpl" method="post" class="needs-validated" novalidate>
        <div class="form-group" style="margin-top:20px; margin-right:500px;">
            <label for="id">ID:</label>
            <input type="text" class="form-control" placeholder="Enter ID" id="id" name="id" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right:500px;">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right: 500px;">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter Name" id="name" name="name" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="from-group" style="margin-right: 500px;">
            <label for="demo">Email:</label>
            <input type="text" class="form-control" placeholder="Enter email" id="email" name="email" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>

</div>
