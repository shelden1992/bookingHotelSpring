<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="form" value="${sessionScope.form}"/>
<c:set var="user" value="${form.user}"/>

<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
    <div class="container">
        <a class="navbar-brand" href="/booking-hotel/"><span class="text-danger">Booking</span>Hotel</a>
        <div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-aos="fade" data-toggle="collapse"
             data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="collapse navbar-collapse" id="templateux-navbar-nav">
            <ul class="navbar-nav ml-5">
                <li class="nav-item"><a class="nav-link" href=/booking-hotel/> <spring:message
                        code="navigation.banner.home"/> </a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="selection-rooms"><spring:message code="navigation.banner.rooms"/></a>
                </li>
                <li class="nav-item"><a class="nav-link" href="event"><spring:message
                        code="navigation.banner.events"/></a></li>

                <li class="nav-item"><a class="nav-link" href="team"><spring:message code="navigation.banner.team"/></a>
                </li>

                <li class="nav-item"><a class="nav-link"
                                        href="/booking-hotel/#section-contact"><spring:message
                        code="navigation.banner.contact"/></a>
                </li>
                <li class="nav-item"><a class="nav-link"
                                        href="gallery"><spring:message code="navigation.banner.gallery"/></a>
                </li>
                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target="#booking-form">
                        <span class="pb_rounded-4 px-4 rounded"><spring:message
                                code="navigation.bookingForm.booking"/></span></a>
                </li>


                <a <%--href="${pageContext.request.contextPath}/language?locale=en"--%> class="text-uppercase">
    <span class="text-danger">
    <c:if test="${user!= null}">
        <c:out value="${user.name}"/>

     </span>
                </a>

                <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                    <a class="nav-link" href="logOut">
                        <span class="pb_rounded-4 px-3 rounded"><spring:message
                                code="navigation.registerForm.signOut"/></span></a>

                </li>

                </c:if>

                <c:if test="${user== null}">
                    <li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
                        <a class="nav-link" href="login">
                            <span class="pb_rounded-4 px-3 rounded"><spring:message
                                    code="navigation.registerForm.signIn"/></span></a>

                    </li>
                </c:if>


            </ul>
            <div class="col-lg-6 col-sm-6 col-8 header-top-right">
                <a href="?locale=en" class="text-uppercase">en</a>
                <a href="?locale=ru" class="text-uppercase">ru</a>
            </div>

        </div>
    </div>
</nav>


<div class="modal fade " id="booking-form" tabindex="-1" role="dialog" aria-labelledby="bookingFromTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" data-aos="fade-up" data-aos-delay="100">

                        <form:form action="check-availabilty" method="post"
                              class="bg-white p-4">
                            <div class="row mb-4">
                                <div class="col-12"><h2><spring:message code="navigation.bookingForm.booking"/></h2>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkin_date"><spring:message
                                            code="navigation.bookingForm.dataCheckIn"/></label>
                                    <input type="text" id="checkin_date" path="checkin-date" class="form-control">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label class="text-black font-weight-bold" for="checkout_date"><spring:message
                                            code="navigation.bookingForm.dataCheckOut"/></label>
                                    <input type="text" id="checkout_date" path="checkout-date" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label for="adults" class="font-weight-bold text-black"><spring:message
                                            code="navigation.bookingForm.adults"/></label>
                                    <div class="field-icon-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="adults" id="adults" class="form-control">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4+</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="roomType" class="font-weight-bold text-black"><spring:message
                                            code="navigation.bookingForm.roomType"/></label>
                                    <div class="field-icon-wrap" onclick="">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="roomType" id="roomType" class="form-control">
                                            <option value="ALL" name="ALL"><spring:message
                                                    code="selectionRooms.header.all"/></option>
                                            <option value="COMFORT"><spring:message
                                                    code="selectionRooms.header.roomTypeComfort"/></option>
                                            <option value="FAMILY REST" name="FAMILY REST"><spring:message
                                                    code="selectionRooms.header.roomTypeFamilyRest"/></option>
                                            <option value="RELAX"><spring:message
                                                    code="selectionRooms.header.roomTypeRelax"/></option>
                                            <option value="BUSINESS"><spring:message
                                                    code="selectionRooms.header.roomTypeBusiness"/></option>
                                            <option value="LUX"><spring:message
                                                    code="selectionRooms.header.roomTypeLux"/></option>

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="submit"
                                           value="<spring:message code="navigation.bookingForm.checkAvailabilty"/>"
                                           class="btn btn-primary text-white py-3 px-5 font-weight-bold">
                                </div>
                            </div>
                        </form:form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
