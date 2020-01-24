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
<section class="site-hero overlay" style="background-image: url( images/reception.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">


    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">

                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                                    <%--                                    @elvariable id="loginForm" type="org.courses.controller.LoginController"--%>
                                    <form:form action="processing-login" method="post"
                                               class="bg-white p-4" modelAttribute="loginForm">
                                        <div class="row mb-4">
                                            <div class="col-12"><h2><spring:message
                                                    code="navigation.registerForm.signIn"/></h2>

                                            </div>
                                        </div>
                                        <div class="row">

                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold" for="email">Email</label>
                                                <form:input type="email" id="email" class="form-control " path="email"
                                                            required="required"/>
                                                <form:errors path="email" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold"
                                                       for="password"><spring:message
                                                        code="navigation.registerForm.password"/></label>
                                                <form:input type="password" id="password" class="form-control "
                                                            path="password" pattern=".{6,}"
                                                            title="Six or more characters"
                                                            required="required"/>
                                                <form:errors path="password" cssClass="text-danger"/>
                                            </div>
                                            <div class="row">
                                                <div class="d-flex justify-content-between align-content-end w-100 col-auto">
                                                    <div class="text-left">
                                                        <p><spring:message
                                                                code="navigation.registerForm.haveNotAccount"/></p>
                                                        <a class="nav-link btn btn-primary"
                                                           href="registration-form"><spring:message
                                                                code="navigation.banner.register"/></a>
                                                    </div>
                                                    <input type="submit"
                                                           value="<spring:message code="navigation.registerForm.signIn"/>"
                                                           style="right: auto; align-self: flex-end;"
                                                           class="btn btn-primary">
                                                </div>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>
</body>
</html>