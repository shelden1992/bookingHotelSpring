<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Booking hotel</title>
    <%@include file="head.jsp" %>
</head>
<body data-spy="scroll" data-target="#templateux-navbar" data-offset="100">
<%@include file="navigationBar.jsp" %>
<section class="site-hero overlay" style="background-image: url( images/bar2.jpg)"
         data-stellar-background-ratio="0.5" id="section-home">
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center" data-aos="fade-up">
                <h1 class="heading"><fmt:message key="gallery.header.photoGallery"/></h1>
            </div>
        </div>
    </div>

    <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
            <span class="mouse-wheel"></span>
        </div>
    </a>
</section>

<section class="section slider-section bg-light">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7">
                <h2 class="heading" data-aos="fade-up"><fmt:message key="gallery.header.photos"/></h2>
                <%--                <p data-aos="fade-up" data-aos-delay="100"> </p>--%>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room7/room7_img4.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room7/room7_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room2/room2_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room2/room2_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/image_6.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_6.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room6/room6_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room5/room5_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">

                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}images/catering.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/catering.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/image_5.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_5.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room1/room1_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room1/room1_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room8/room8_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room8/room8_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room8/room8_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room8/room8_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/banck.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/banck.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/wedding.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/wedding.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room3/room3_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room3/room3_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room8/room8_img3.jp"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room8/room8_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room9/room9_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room9/room9_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/sea-view-1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/sea-view-1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>
            <div class="col-md-6">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/image_7.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/image_7.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room1/room1_img3.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room1/room1_img3.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room3/room3_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room3/room3_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room9/room9_img2.jpg.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room9/room9_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room5/room5_img1.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room5/room5_img1.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                    <div class="slider-item">
                        <a href="${pageContext.request.contextPath}ui/images/room6/room6_img2.jpg"
                           data-fancybox="images"
                           data-caption="Caption for this image"><img
                                src="images/room6/room6_img2.jpg" alt="Image placeholder" class="img-fluid"></a>
                    </div>
                </div>
                <!-- END slider -->
            </div>

        </div>
    </div>
</section>
<%@include file="endPage.jsp" %>
<%@include file="scripts.jsp" %>


</body>
</html>