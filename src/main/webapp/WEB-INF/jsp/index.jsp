<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="form"%>

<c:set var="form" value="${sessionScope.form}"/>
<c:set var="reservation" value="${form.reservation}"/>
<c:set var="bookingStatus" value="${requestScope.bookingStatus}"/>
<c:set var="existFreeRooms" value="${requestScope.existFreeRooms}"/>
<html>
<head>
    <title>Booking Hotel</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="200">

<%@include file="navigationBar.jsp" %>
<!-- END nav -->

<section class="site-hero overlay" style="background-image: url(images/sea-view-1.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">


    <div class="container">


        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><spring:message code="home.banner.header"/></h1>
                <div class="col-md-12 text-center" data-aos="fade-up">
                    <c:if test="${bookingStatus!=null}">--%>
                        <h6 class="heading text-danger"><fmt:message key="${bookingStatus}"/></h6>
                    </c:if>
                </div>
            </div>
        </div>
    </div>


    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<section class="section bg-light pb-0">
    <div class="container">

        <div class="row check-availabilty" id="next">
            <div class="block-32" data-aos="fade-up" data-aos-offset="-200">

                <form:form action="check-availabilty" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkin_date" name="checkin_date"
                                   class="font-weight-bold text-black"><spring:message code="navigation.bookingForm.dataCheckIn"/> </label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <form:input type="text" id="checkin_date" path="checkinDate" class="form-control"/>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                            <label for="checkout_date" class="font-weight-bold text-black"><spring:message code="navigation.bookingForm.dataCheckOut"/> </label>
                            <div class="field-icon-wrap">
                                <div class="icon"><span class="icon-calendar"></span></div>
                                <form:input type="text" id="checkout_date" path="checkoutDate" class="form-control"/>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                            <div class="row">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label for="adults" class="font-weight-bold text-black"><spring:message code="navigation.bookingForm.adults"/></label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <form:select path="adults" id="adults" class="form-control">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4+</option>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="roomType" class="font-weight-bold text-black"><spring:message code="navigation.bookingForm.roomType"/></label>
                                    <div class="field-icon-wrap" onclick="">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <form:select path="roomType" id="roomType" class="form-control">
                                            <option value="ALL" name="ALL"><spring:message code="selectionRooms.header.all"/></option>
                                            <option value="COMFORT"><spring:message code="selectionRooms.header.roomTypeComfort"/></option>
                                            <option value="FAMILY REST" name="FAMILY REST"><spring:message code="selectionRooms.header.roomTypeFamilyRest"/></option>
                                            <option value="RELAX"><spring:message code="selectionRooms.header.roomTypeRelax"/></option>
                                            <option value="BUSINESS"><spring:message code="selectionRooms.header.roomTypeBusiness"/></option>
                                            <option value="LUX"><spring:message code="selectionRooms.header.roomTypeLux"/></option>

                                        </form:select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 align-self-center">
                            <button class="btn btn-primary btn-block text-white"><fmt:message
                                    key="navigation.bookingForm.checkAvailabilty"/></button>
                        </div>
                        <c:if test="${existFreeRooms!=null}">
                            <a style="color: red;font-size: large;"> <fmt:message
                                    key="${existFreeRooms}"/></a>
                        </c:if>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<%--<!--describe hotel-->--%>
<%@include file="about.jsp" %>
<%--<!-- END .block-1 -->--%>


<!--reviews-->
<section class="section testimonial-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><spring:message code="home.banner.peopleSay"/></h2>
            </div>
        </div>
        <div class="row">
            <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_1.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><spring:message code="home.banner.peopleSay1"/></p>
                    </blockquote>
                    <p><em>&mdash; Jean Smith</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_2.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p><spring:message code="home.banner.peopleSay2"/></p>
                    </blockquote>
                    <p><em>&mdash; Dian Doe</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_10.png" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><spring:message code="home.banner.peopleSay3"/></p>
                    </blockquote>
                    <p><em>&mdash; Jonin Warshawskii</em></p>
                </div>


                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_11.jpeg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><spring:message code="home.banner.peopleSay4"/></p>
                    </blockquote>
                    <p><em>&mdash; Rosa Len</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_12.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>
                        <p><spring:message code="home.banner.peopleSay5"/></p>
                    </blockquote>
                    <p><em>&mdash; Denis Mark</em></p>
                </div>

                <div class="testimonial text-center slider-item">
                    <div class="author-image mb-3">
                        <img src="images/person_14.jpg" alt="Image placeholder"
                             class="rounded-circle mx-auto">
                    </div>
                    <blockquote>

                        <p><spring:message code="home.banner.peopleSay6"/></p>
                    </blockquote>
                    <p><em>&mdash; Barbar Straiz</em></p>
                </div>

            </div>
            <!-- END slider -->
        </div>

    </div>
</section>

<section class="section contact-section" id="section-contact">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><spring:message code="home.banner.contactUs"/></h2>
                <p data-aos="fade-up"><spring:message code="home.banner.contactUsIfYouHave"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
                <form method="post" class="bg-white p-md-5 p-4 mb-5 border">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="name"><spring:message code="navigation.bookingForm.name"/></label>
                            <input type="text" name="name" id="name" class="form-control ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="phone"><spring:message code="navigation.bookingForm.phone"/></label>
                            <input type="text" name="phone" id="phone" class="form-control ">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control ">
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col-md-12 form-group">
                            <label for="message"><spring:message code="home.banner.writeMessage"/></label>
                            <textarea name="message" id="message" class="form-control " cols="30"
                                      rows="8"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="<spring:message code="home.banner.sendMessage"/>"
                                   class="btn btn-primary text-white font-weight-bold">
                            <div class="submitting"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
                <div class="row">
                    <div class="col-md-10 ml-auto contact-info">
                        <p><span class="d-block"><spring:message code="endPage.banner.address"/></span> <span
                                class="text-black"> Khreschatyk St, 15/4 Kyiv, 01001</span>
                        </p>
                        <p><span class="d-block"><spring:message code="endPage.banner.phone"/></span> <span
                                class="text-black"> +38(050)208-75-69</span></p>
                        <p><span class="d-block">Email:</span> <span
                                class="text-black"> booking_hotelShel@gmail.com</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- END .block-5 -->

<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>