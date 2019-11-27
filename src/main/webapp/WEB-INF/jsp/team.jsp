<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Booking Hotel</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">
<%@include file="navigationBar.jsp" %>
<section class="site-hero overlay" style="background-image: url( images/teamAll.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><spring:message code="team.start.message"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>
<div class="container section" id="section-team">

    <div class="row justify-content-center text-center mb-5">
        <div class="col-md-7 mb-5">
            <h2 class="heading" data-aos="fade-up"><spring:message code="team.start.leadership"/></h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_7.jpg);">
                        <div class="box">
                            <h2>Boris Donson</h2>
                            <p><spring:message code="team.start.president"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.first"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_7.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Boris Donson<span class="position"><spring:message code="team.start.president"/></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_9.png);">
                        <div class="box">
                            <h2>Daniel Merion</h2>
                            <p><spring:message code="team.start.manager"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.five"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_9.png" alt="">
                            </div>
                            <div class="name align-self-center">Daniel Merion <span
                                    class="position"><spring:message code="team.start.manager"/></span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_8.webp);">
                        <div class="box">
                            <h2>Oleg Sencov</h2>
                            <p><spring:message code="team.start.ssmHeader"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.six"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_8.webp" alt="">
                            </div>
                            <div class="name align-self-center">Oleg Sencov<span
                                    class="position"><spring:message code="team.start.ssmHeader"/></span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_2.jpg);">
                        <div class="box">
                            <h2>Jane Johnson</h2>
                            <p><spring:message code="team.start.marketingDirectory"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.third"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_2.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Jane Johnson <span
                                    class="position"><spring:message code="team.start.marketingDirectory"/></span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="block-2"> <!-- .hover -->
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_1.jpg);">
                        <div class="box">
                            <h2>Nick William</h2>
                            <p><spring:message code="team.start.businessManager"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.second"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_1.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Nick William<span
                                    class="position"><spring:message code="team.start.businessManager"/></span></div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>
        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="block-2">
                <div class="flipper">
                    <div class="front" style="background-image: url(images/hero_6.jpg);">
                        <div class="box">
                            <h2>Uriy Byckov</h2>
                            <p><spring:message code="team.start.businessManager"/></p>
                        </div>
                    </div>
                    <div class="back">
                        <!-- back content -->
                        <blockquote>
                            <p><spring:message code="team.message.four"/></p>
                        </blockquote>
                        <div class="author d-flex">
                            <div class="image mr-3 align-self-center">
                                <img src="${pageContext.request.contextPath}/ui/images/hero_6.jpg" alt="">
                            </div>
                            <div class="name align-self-center">Uriy Bycko <span class="position"><spring:message code="team.start.businessManager"/></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .flip-container -->
        </div>

    </div>
</div>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>