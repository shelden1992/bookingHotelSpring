<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Booking Hotel</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">


<%@include file="navigationBar.jsp" %>

<section class="site-hero overlay" style="background-image: url( images/room1/room1_img1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="selectionRooms.header.choose"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<!--allRooms-->
<section class="section" id="section-rooms">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="selectionRooms.header.roomAndSuites"/></h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_1.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeComfort"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight90"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_2.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeFamilyRest"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight120"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-6" data-aos="fade-up">
                <a href="#" class="room">
                    <figure class="img-wrap">
                        <img src="images/img_3.jpg" alt="Free website template" class="img-fluid mb-3">
                    </figure>
                    <div class="p-3 text-center room-info">
                        <h2><fmt:message key="selectionRooms.header.roomTypeLux"/></h2>
                        <span class="text-uppercase letter-spacing-1"><fmt:message
                                key="selectionRooms.header.roomPerNight250"/></span>
                    </div>
                </a>
            </div>


        </div>
    </div>

</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>