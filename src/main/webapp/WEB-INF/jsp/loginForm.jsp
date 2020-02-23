<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<c:set var="statusLoginMessage" value="${requestScope.statusLoginMessage}"/>--%>

<html>
<head>
    <title>LogIn form</title>
    <%@include file="head.jsp" %>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}"><span class="text-danger">Booking</span>Hotel</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-aos="fade" data-toggle="collapse"
             data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="collapse navbar-collapse" id="templateux-navbar-nav">


            <div class="col-lg-6 col-sm-6 col-8 header-top-left">
                <a href="?locale=en" class="text-uppercase">en</a>
                <a href="?locale=ru" class="text-uppercase">ru</a>
            </div>

        </div>
    </div>
</nav>

<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>
</body>
</html>