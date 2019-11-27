<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <title>Booking Hotel</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">

<%@include file="navigationBar.jsp" %>

<section class="site-hero overlay" style="background-image: url( images/1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><spring:message code="privacy.header"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<div class="row pt-5 col-md-6 text-center" style="margin: auto;">

    <div>
        <p align="justify">
            <spring:message code="privacy.first"/>
        </p>

        <p align="justify">
            <spring:message code="privacy.second"/>
        </p>

        <p align="justify">
            <spring:message code="privacy.third"/>
        </p>

        <p align="justify">
            <spring:message code="privacy.four"/>

        </p>

        <p align="justify">
            <spring:message code="privacy.five"/>

        </p>

        <p align="justify">
            <spring:message code="privacy.six"/>

        </p>
    </div>
</div>


<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>
