<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Field --%>
<div class="col-sm-9">
    <h2>HTML1 Page</h2>
    <h5>1) alerts, Button, Progress Bars, Spinners</h5>

    <div class="container">
        <h2>Alert Links</h2>
        <p>Add the alert-link class to any links inside the alert box to create "matching colored links".</p>
        <div class="alert alert-success">
            <strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-info">
            <strong>Info!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-warning">
            <strong>Warning!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-danger">
            <strong>Danger!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-primary">
            <strong>Primary!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-secondary">
            <strong>Secondary!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-dark">
            <strong>Dark!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
        <div class="alert alert-light">
            <strong>Light!</strong> You should <a href="#" class="alert-link">read this message</a>.
        </div>
    </div>

    <div class="container">
        <h2>Button Outline</h2>
        <button type="button" class="btn btn-outline-primary">Primary</button>
        <button type="button" class="btn btn-outline-secondary">Secondary</button>
        <button type="button" class="btn btn-outline-success">Success</button>
        <button type="button" class="btn btn-outline-info">Info</button>
        <button type="button" class="btn btn-outline-warning">Warning</button>
        <button type="button" class="btn btn-outline-danger">Danger</button>
        <button type="button" class="btn btn-outline-dark">Dark</button>
        <button type="button" class="btn btn-outline-light text-dark">Light</button>
    </div>

    <div class="container">
        <h2>Progress Bar With Label</h2>
        <div class="progress">
            <div class="progress-bar" style="width:70%">70%</div>
        </div>
    </div>

    <div class="container">
        <h2>Colored Spinners</h2>
        <p>Use any <strong>text color utilites</strong> to add a color to the spinner:</p>

        <div class="spinner-border text-muted"></div>
        <div class="spinner-border text-primary"></div>
        <div class="spinner-border text-success"></div>
        <div class="spinner-border text-info"></div>
        <div class="spinner-border text-warning"></div>
        <div class="spinner-border text-danger"></div>
        <div class="spinner-border text-secondary"></div>
        <div class="spinner-border text-dark"></div>
        <div class="spinner-border text-light"></div>
    </div>
</div>
