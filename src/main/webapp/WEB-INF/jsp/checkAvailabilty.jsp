<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="form" value="${sessionScope.form}"/>
<c:set var="listRooms" value="${requestScope.listRooms}"/>
<c:set var="reservation" value="${form.reservation}"/>
<html>
<head>
    <title>Booking hotel room</title>
    <%@include file="head.jsp" %>
</head>

<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
<%@include file=" navigationBar.jsp" %>


<section class="site-hero overlay" style="background-image: url( images/check-availabillty.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">

    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="navigation.bookingForm.allFreeRooms"/></h1>
                <h3 class="heading" style="color: red;">
                    <c:out value="${reservation.startReservation}"/>
                    <c:out value="${reservation.finishReservation}"/>
                </h3>

            </div>
        </div>
    </div>


    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>


<section class="section" id="section-listRooms">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message
                        key="selectionRooms.header.roomAndSuites"/></h2>
            </div>
        </div>
        <c:forEach items="${listRooms}" var="room" varStatus="loop">
            <div class="row">
                <div class="col-md-6">
                    <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up"
                         data-aos-delay="200">

                        <c:forEach items="${room.photoList}" var="photo">
                            <div class="slider-item">
                                <a href="${pageContext.request.contextPath}/ui/${photo.photoLink}"
                                   data-fancybox="images"
                                   data-caption="Caption for this image"><img src="${photo.photoLink}"
                                                                              alt="Image placeholder"
                                                                              class="img-fluid"></a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-md-6 p-5 text-center room-info">
                    <h2><c:out value="${room.roomType.name}"/></h2>
                    <span class="text-uppercase letter-spacing-1"><c:out value="${room.price}"/> </span>
                    <fmt:message key="selectionRooms.header.roomPerNight"/>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <a class="btn btn-primary text-white py-3 px-5 font-weight-bold"
                               name="${room.getEntityId()}"
                               href="${pageContext.request.contextPath}/booking-form?room_number=${room.getEntityId()}"><fmt:message
                                    key="navigation.bookingForm.bookingNow"/></a>

                        </div>
                    </div>
                </div>

            </div>

        </c:forEach>
    </div>
</section>


<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>
