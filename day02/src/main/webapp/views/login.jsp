<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- login Page --%>
<div class="col-sm-9">
    <h2>Login Page</h2>
    <h5>Input id, Password</h5>
    <form action="/loginimpl" method="post" class="needs-validated" novalidate>
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

        <button type="submit" class="btn btn-primary">Log In</button>
    </form>
</div>
