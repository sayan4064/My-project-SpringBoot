<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!doctype html>
<html lang="en">

<head>
	<base href="${pageContext.request.contextPath}/">
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Services offered by Sayan Metya - Backend Development, API Design, Database Design, Cloud and DevOps.">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Services | Sayan Metya</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modern UI Override -->
	<link rel="stylesheet" href="css/modern-override.css">
	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>

	<!--================ Start Header Area =================-->
    	<%@ include file="header.jsp" %>
    	<!--================ End Header Area =================-->

    <!--================ Start Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>My Services</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/index">Home</a>
                        <a href="${pageContext.request.contextPath}/client/service">Services</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->

	<!--================ Start Features Area =================-->
	<section class="features_area section_gap_top" style="padding-bottom: 100px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Service Offers</h2>
                        <p>
                            Expert backend development services tailored to your project requirements.
                            From idea to production — I've got you covered.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Primary Services -->
            <div class="row feature_inner" style="margin-top: 60px;">
                <div class="col-lg-3 col-md-6 mb-4 animate-up">
                    <div class="feature_item">
                        <img src="img/services/s1.png" alt="Backend Development">
                        <h4>Backend Development</h4>
                        <p>Scalable Java Spring Boot applications with clean architecture and SOLID principles.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 animate-up delay-1">
                    <div class="feature_item">
                        <img src="img/services/s2.png" alt="API Design">
                        <h4>REST API Design</h4>
                        <p>Well-documented RESTful APIs with Swagger, authentication, and proper error handling.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 animate-up delay-2">
                    <div class="feature_item">
                        <img src="img/services/s3.png" alt="Database Design">
                        <h4>Database Design</h4>
                        <p>Optimized relational and NoSQL database schemas with efficient query performance.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 animate-up delay-3">
                    <div class="feature_item">
                        <img src="img/services/s4.png" alt="Cloud & DevOps">
                        <h4>Cloud &amp; DevOps</h4>
                        <p>Docker containerization, CI/CD pipelines, and cloud infrastructure on AWS/GCP.</p>
                    </div>
                </div>
            </div>

            <!-- Process Section -->
            <div class="row justify-content-center" style="margin-top: 80px;">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>My Work Process</h2>
                        <p>A simple, transparent process to deliver your project on time and within budget.</p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 50px; gap: 0 24px; flex-wrap: wrap;">
                <div class="col-lg col-md-6 mb-4 animate-up">
                    <div class="glass-card" style="padding: 36px 28px; text-align: center; height: 100%;">
                        <div style="width: 60px; height: 60px; border-radius: 50%; background: linear-gradient(135deg, #7c3aed, #06b6d4); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; font-family: 'Space Grotesk', sans-serif; font-size: 1.4rem; font-weight: 800; color: #fff;">01</div>
                        <h5 style="font-family: 'Space Grotesk', sans-serif; color: #fff; font-weight: 700; margin-bottom: 12px;">Discovery</h5>
                        <p style="color: var(--text-muted); font-size: 0.9rem;">Understanding your requirements, goals, and technical constraints thoroughly.</p>
                    </div>
                </div>
                <div class="col-lg col-md-6 mb-4 animate-up delay-1">
                    <div class="glass-card" style="padding: 36px 28px; text-align: center; height: 100%;">
                        <div style="width: 60px; height: 60px; border-radius: 50%; background: linear-gradient(135deg, #7c3aed, #06b6d4); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; font-family: 'Space Grotesk', sans-serif; font-size: 1.4rem; font-weight: 800; color: #fff;">02</div>
                        <h5 style="font-family: 'Space Grotesk', sans-serif; color: #fff; font-weight: 700; margin-bottom: 12px;">Architecture</h5>
                        <p style="color: var(--text-muted); font-size: 0.9rem;">Designing a robust and scalable architecture that fits your business needs.</p>
                    </div>
                </div>
                <div class="col-lg col-md-6 mb-4 animate-up delay-2">
                    <div class="glass-card" style="padding: 36px 28px; text-align: center; height: 100%;">
                        <div style="width: 60px; height: 60px; border-radius: 50%; background: linear-gradient(135deg, #7c3aed, #06b6d4); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; font-family: 'Space Grotesk', sans-serif; font-size: 1.4rem; font-weight: 800; color: #fff;">03</div>
                        <h5 style="font-family: 'Space Grotesk', sans-serif; color: #fff; font-weight: 700; margin-bottom: 12px;">Development</h5>
                        <p style="color: var(--text-muted); font-size: 0.9rem;">Writing clean, tested, and well-documented code with agile iterations.</p>
                    </div>
                </div>
                <div class="col-lg col-md-6 mb-4 animate-up delay-3">
                    <div class="glass-card" style="padding: 36px 28px; text-align: center; height: 100%;">
                        <div style="width: 60px; height: 60px; border-radius: 50%; background: linear-gradient(135deg, #7c3aed, #06b6d4); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; font-family: 'Space Grotesk', sans-serif; font-size: 1.4rem; font-weight: 800; color: #fff;">04</div>
                        <h5 style="font-family: 'Space Grotesk', sans-serif; color: #fff; font-weight: 700; margin-bottom: 12px;">Delivery</h5>
                        <p style="color: var(--text-muted); font-size: 0.9rem;">Deploying and handing over a fully tested, production-ready application.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Features Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap_bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Client Testimonials</h2>
                        <p>Feedback from clients who trusted me with their projects.</p>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="testi_slider owl-carousel">
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-4 text-center">
                                <img src="img/testimonials/t1.jpg" alt="Elite Martin">
                            </div>
                            <div class="col-lg-8">
                                <div class="testi_text">
                                    <h4>Elite Martin</h4>
                                    <p>Sayan built a blazing-fast REST API for our platform. His deep understanding of Spring Boot and clean code practices made collaboration a pleasure.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-4 text-center">
                                <img src="img/testimonials/t2.jpg" alt="David Saden">
                            </div>
                            <div class="col-lg-8">
                                <div class="testi_text">
                                    <h4>David Saden</h4>
                                    <p>Excellent backend architecture for our e-commerce app. Delivered on time, well-documented and production-ready. Will definitely hire again!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-4 text-center">
                                <img src="img/testimonials/t1.jpg" alt="Julia Rogers">
                            </div>
                            <div class="col-lg-8">
                                <div class="testi_text">
                                    <h4>Julia Rogers</h4>
                                    <p>The microservices architecture he implemented scaled perfectly when our traffic grew 10x overnight. Absolutely outstanding work!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================ End Testimonial Area =================-->
    
   
<!--================Footer Area =================-->
	        	<%@ include file="footer.jsp" %>
    <!--================End Footer Area =================-->
    
    <!-- Optional JavaScript -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope-min.js"></script>
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/mail-script.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/theme.js"></script>
    <!-- Modern UI Script -->
    <script src="js/modern-ui.js"></script>
</body>

</html>