<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${sessionScope.logincust.custId == 'admin'}">
        <%-- Admin Left Field --%>
        <div class="col-sm-3">
            <p>Admin Menu</p>
        </div>
    </c:when>
    <c:otherwise>
        <%-- User Left Field --%>
        <div class="col-sm-0">

        </div>
    </c:otherwise>
</c:choose>