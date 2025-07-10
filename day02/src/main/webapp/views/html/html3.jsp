<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    /* Make the image fully responsive */
    .carousel-inner img {
        width: 50%;
        height: 100%;
    }
</style>

<%-- Center Field --%>
<div class="col-sm-9">
    <h2>HTML3 Page</h2>

    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/img/ryu.jpg" alt="Hyun-Jin Ryu" width="100" height="100">
                <div class="carousel-caption">
                    <h3>Hyun-Jin Ryu</h3>
                    <p>Hanhwa Eeagles</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/img/Yoon.jpg" alt="Seok-Min Yoon" width="100" height="100">
                <div class="carousel-caption">
                    <h3>Seok-Min Yoon</h3>
                    <p>KIA Tigers</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/img/kim.jpg" alt="Gwang-Hyun Kim" width="100" height="100">
                <div class="carousel-caption">
                    <h3>Gwang-Hyun Kim</h3>
                    <p>SK Wyverns & SSG Landers</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>
