<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="statusRegisterMessage" value="${requestScope.statusRegisterMessage}"/>
<html>

<head>
    <title>Booking Hotel</title>
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

            </ul>
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
                                    <form action="register" method="post"
                                          class="bg-white p-4">
                                        <div class="row mb-4">
                                            <div class="col-12"><h2><fmt:message
                                                    key="navigation.registerForm.register"/></h2>
                                                <c:if test="${statusRegisterMessage!=null}">
                                                    <h5><span class="text-danger"><fmt:message
                                                            key="${statusRegisterMessage}"/></span></h5>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 form-group">
                                                <label class="text-black font-weight-bold" for="name"><fmt:message
                                                        key="navigation.registerForm.name"/></label>
                                                <input type="text" id="name" class="form-control " name="name"
                                                       required="required">
                                            </div>

                                            <div class="col-md-6 form-group">
                                                <label class="text-black font-weight-bold" for="surname"><fmt:message
                                                        key="navigation.registerForm.surname"/></label>
                                                <input type="text" id="surname" class="form-control " name="surname"
                                                       required="required">
                                            </div>

                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold" for="phone"><fmt:message
                                                        key="navigation.registerForm.phone"/></label>
                                                <input type="text" id="phone" class="form-control " name="phone"
                                                       pattern="[\+]\d{2}\d{2}\d{4}\d{4}"
                                                       title="Phone Number like: +380502087566" required="required">
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold" for="password"><fmt:message
                                                        key="navigation.registerForm.password"/></label>
                                                <input type="password" id="password" class="form-control "
                                                       name="password" pattern=".{6,}" title="Six or more characters"
                                                       required="required">
                                            </div>

                                        </div>
                                        <div class="row">


                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold" for="email">Email</label>
                                                <input type="email" id="email" class="form-control " name="email"
                                                       required="required">
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <div class="col-md-12 form-group">
                                                <label class="text-black font-weight-bold"
                                                       for="additionalInfo"><fmt:message
                                                        key="navigation.bookingForm.notes"/></label>
                                                <textarea name="additionalInfo" id="additionalInfo"
                                                          class="form-control " cols="3"
                                                          rows="3"></textarea>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="d-flex justify-content-between align-content-end w-100 col-auto">
                                                <input type="submit" value="<fmt:message
                                            key="navigation.banner.register"/>"
                                                       style="right: auto; align-self: flex-end;"
                                                       class="btn btn-primary">


                                            </div>
                                        </div>
                                    </form>
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
