<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- login Page --%>
<div class="col-sm-9">
    <h2>Login Page</h2>
    <h5>Input id, Password</h5>
    <form action="/action_page.php" class="needs-validated" novalidate>
        <div class="form-group" style="margin-top:20px; margin-right:550px;">
            <label for="email">Email address:</label>
            <input type="email" class="form-control" placeholder="Enter email" id="email" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right:550px;">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group form-check">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
