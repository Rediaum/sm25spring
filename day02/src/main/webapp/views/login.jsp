<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- login Page --%>
<div class="col-sm-9">
    <h2>Login Page</h2>
    <h5>Input id, Password</h5>
    <div class="row">
        <div class="col-sm-8">
            <form action="/loginimpl" method="post" class="needs-validated" novalidate>
                <div class="form-group">
                    <label for="id">ID:</label>
                    <input type="text" value="id01" class="form-control" placeholder="Enter ID" id="id" name="id">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" value="pwd01" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
                </div>
                <button type="submit" class="btn btn-primary">Log In</button>
            </form>
        </div>
        <div class="col-sm-4">
            <c:choose>
                <c:when test="${loginstate=='fail'}">
                    <h4>로그인 실패!</h4>
                </c:when>
                <c:otherwise>
                    <h4>ID와 PWD를 입력하세요</h4>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
</div>
