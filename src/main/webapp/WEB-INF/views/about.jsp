<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!doctype html>
<html lang="en">

<head>
	<base href="${pageContext.request.contextPath}/">
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="About Sayan Metya - Java Backend Developer from West Bengal, India. Learn more about my skills, experience, and journey.">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>About | Sayan Metya</title>
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
                    <h2>About Me</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/index">Home</a>
                        <a href="${pageContext.request.contextPath}/client/about">About</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->
    
   <!--================ Start About Us Area =================-->
	<section class="about_area section_gap">
        <div class="container">
            <div class="row justify-content-start align-items-center">
                <div class="col-lg-5 animate-up">
                    <div class="about_img">
                        <img class="" src="img/about-us.png" alt="Sayan Metya">
                    </div>
                </div>

                <div class="col-lg-7 animate-up delay-2">
                    <div class="main_title text-left">
                        <h2>Who Am I?</h2>
                        <p>
                            I'm <strong style="color: var(--primary);">Sayan Metya</strong>, a passionate Java Backend Developer 
                            based in West Bengal, India. I specialize in building scalable, high-performance backend 
                            systems using Spring Boot and modern Java technologies.
                        </p>
                        <p>
                            With over 10 years of experience, I have delivered production-grade applications 
                            for clients across various industries. My approach combines clean code principles, 
                            solid architecture, and a deep understanding of the business domain.
                        </p>

                        <!-- Skills -->
                        <div style="margin-top: 28px;">
                            <div class="skill-bar">
                                <div class="skill-label"><span>Java / Spring Boot</span><span>95%</span></div>
                                <div class="skill-track"><div class="skill-fill" data-width="95"></div></div>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-label"><span>REST API / Microservices</span><span>90%</span></div>
                                <div class="skill-track"><div class="skill-fill" data-width="90"></div></div>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-label"><span>SQL / Hibernate / JPA</span><span>88%</span></div>
                                <div class="skill-track"><div class="skill-fill" data-width="88"></div></div>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-label"><span>Docker / CI/CD</span><span>80%</span></div>
                                <div class="skill-track"><div class="skill-fill" data-width="80"></div></div>
                            </div>
                            <div class="skill-bar">
                                <div class="skill-label"><span>Git / Version Control</span><span>92%</span></div>
                                <div class="skill-track"><div class="skill-fill" data-width="92"></div></div>
                            </div>
                        </div>

                        <a class="primary_btn" href="#" style="margin-top: 20px;"><span>Download CV</span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End About Us Area =================-->

	<!--================ Start Brand Area =================-->
	<section class="brand_area section_gap_bottom">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Tech Stack</h2>
                        <p>Tools and technologies I use to build world-class software products.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8 animate-up delay-1">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo1.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo2.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo3.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo4.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo5.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo6.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo7.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo8.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="single-brand-item d-table">
                                <div class="d-table-cell text-center">
                                    <img src="img/brands/logo9.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 animate-up delay-2">
                    <div class="client-info">
                        <div class="d-flex mb-50">
                            <span class="lage">10</span>
                            <span class="smll">Years<br>Experience<br>Working</span>
                        </div>
                        <div class="call-now d-flex">
                            <div>
                                <span class="fa fa-phone"></span>
                            </div>
                            <div class="ml-15">
                                <p>Call Me Now</p>
                                <h3>+91 938234064</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Brand Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap_bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Client Testimonials</h2>
                        <p>What my clients have to say about working with me.</p>
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
                                    <p>Sayan delivered a production-ready backend system ahead of schedule. His code is clean, well-tested and perfectly documented. Amazing experience!</p>
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
                                    <p>Excellent microservices architecture, great communication throughout the project. I highly recommend Sayan for any Java backend work!</p>
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
                                    <p>The API Sayan built handles thousands of requests per second without breaking a sweat. Truly a backend wizard! Will hire again.</p>
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