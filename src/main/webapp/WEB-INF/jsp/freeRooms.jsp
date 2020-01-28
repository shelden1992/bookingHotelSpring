<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>Booking Hotel</title>
    <%@include file="head.jsp" %>
</head>

<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">
<%@include file="navigationBar.jsp" %>


<section class="section image" style="background-image: url(${pageContext.request.contextPath}/images/Grey-Background.jpg)" id="section-listRooms">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><spring:message code="selectionRooms.header.freeRooms"/></h2>
            </div>
        </div>
        <c:forEach items="${freeRooms}" var="room" varStatus="loop">
            <div class="row">
                <div class="col-1">
                    <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up"
                         data-aos-delay="200">

                        <c:forEach items="${room.photos}" var="photo">
                            <div class="slider-item">
                                <a href="${pageContext.request.contextPath}/${photo.photoLink}"
                                   data-fancybox="images"
                                   data-caption="Caption for this image"><img src="${pageContext.request.contextPath}/${photo.photoLink}"
                                                                              alt="Image placeholder"
                                                                              class="img-fluid"></a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <c:url var="booking" value="/booking/booking-room">
                    <c:param name="roomId" value="${room.getId()}"/>
                </c:url>

                <div class="col-md-6 p-5 text-center room-info">
                    <h2><c:out value="${room.roomType.name}"/></h2>
                    <span class="text-uppercase letter-spacing-1"><c:out value="${room.price}"/> </span>
                    <spring:message code="selectionRooms.header.roomPerNight"/>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <a class="btn btn-primary text-white py-3 px-5 font-weight-bold"
                               name="${room.id}"
                               href="${booking}"><spring:message code="navigation.bookingForm.bookingNow"/></a>

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
