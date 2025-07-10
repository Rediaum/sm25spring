<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- About Page --%>
<div class="col-sm-9">
    <h2>About Page</h2>
    <h5>About us</h5>

    <div class="form-check">
        <label class="form-check-label">
            <input type="radio" class="form-check-input" name="optradio">Male
        </label>
    </div>
    <div class="form-check">
        <label class="form-check-label">
            <input type="radio" class="form-check-input" name="optradio">Female
        </label>
    </div>
    <hr>
    <div class="form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input" value="">Eat
        </label>
    </div>
    <div class="form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input" value="">Study
        </label>
    </div>
    <div class="form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input" value="">Health
        </label>
    </div>
    <hr>
    <div class="form-group">
        <label for="sel1">Select list:</label>
        <select class="form-control" id="sel1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
        </select>
    </div>
    <form>
        <hr>
        <input type="range" class="custom-range" id="customRange" name="points1">
    </form>
    <hr>


</div>
