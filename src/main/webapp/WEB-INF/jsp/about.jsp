<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<section class="py-5 bg-light" id="section-about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-12 col-lg-7 ml-auto order-lg-2 position-relative mb-5" data-aos="fade-up">
                <img src="images/food-1.jpg" alt="Image" class="img-fluid rounded">
            </div>
            <div class="col-md-12 col-lg-4 order-lg-1" data-aos="fade-up">
                <h3 class="heading mb-3"><spring:message code="about.inform.relax"/></h3>
                <p class="mb-5"><spring:message code="about.inform.concept"/></p>
                <p><a href="https://www.youtube.com/watch?v=7THxdS-3shE" data-fancybox
                      class="btn btn-primary text-white py-2 mr-3 text-uppercase letter-spacing-1"><spring:message
                        code="about.inform.watchVideo"/></a>
                </p>
            </div>

        </div>
    </div>
</section>