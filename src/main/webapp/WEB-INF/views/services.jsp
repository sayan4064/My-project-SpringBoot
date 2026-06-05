<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                        <a href="${pageContext.request.contextPath}/client/service" class="active">Services</a>
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
            <div class="row feature_inner" style="margin-top: 20px;">
                <c:choose>
                    <c:when test="${not empty services}">
                        <c:forEach items="${services}" var="service" varStatus="status">
                            <div class="col-lg-3 col-md-6 mb-4 animate-up <c:if test='${status.index > 0}'>delay-${status.index % 4}</c:if>">
                                <div class="feature_item" style="height: 100%;">
                                    <img src="${pageContext.request.contextPath}/img/services/${service.image}" alt="${service.title}">
                                    <h4>${service.title}</h4>
                                    <p>${service.description}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="col-lg-12 text-center animate-up" style="padding: 0; margin-top: -20px;">
                            <div class="glass-card" style="padding: 30px 40px; display: inline-block; max-width: 500px; width: 100%; border: 1px solid var(--glass-border); border-radius: var(--radius-xl); background: #ffffff; box-shadow: var(--shadow-card);">
                                <i class="fa fa-info-circle" style="font-size: 3rem; color: var(--primary); margin-bottom: 16px;"></i>
                                <h4 style="font-family: 'Space Grotesk', sans-serif; font-weight: 700; color: var(--text-primary); margin-bottom: 8px;">No Services Available</h4>
                                <p style="color: var(--text-muted); font-size: 0.95rem; margin: 0;">no services availevel in this time</p>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
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
	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center animate-up">
					<div class="main_title">
						<h2>My Coding Principles</h2>
						<p>How I write software and approach problems.</p>
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 50px;">
				<div class="col-lg-4 col-md-6 mb-4 animate-up">
					<div class="glass-card" style="padding: 40px 30px; text-align: center; height: 100%; border: 1px solid var(--glass-border); border-radius: var(--radius-lg); background: var(--bg-card); box-shadow: var(--shadow-card);">
						<div style="width: 60px; height: 60px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px;">
							<i class="fa fa-code" style="font-size: 1.8rem; color: var(--primary);"></i>
						</div>
						<h4 style="font-family: 'Space Grotesk', sans-serif; font-weight: 700; color: var(--text-primary); margin-bottom: 12px;">Clean Code</h4>
						<p style="color: var(--text-muted); font-size: 0.95rem; margin: 0; line-height: 1.6;">I write clean, simple, and easy-to-read code.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 animate-up delay-1">
					<div class="glass-card" style="padding: 40px 30px; text-align: center; height: 100%; border: 1px solid var(--glass-border); border-radius: var(--radius-lg); background: var(--bg-card); box-shadow: var(--shadow-card);">
						<div style="width: 60px; height: 60px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px;">
							<i class="fa fa-bolt" style="font-size: 1.8rem; color: var(--primary);"></i>
						</div>
						<h4 style="font-family: 'Space Grotesk', sans-serif; font-weight: 700; color: var(--text-primary); margin-bottom: 12px;">Fast &amp; Secure</h4>
						<p style="color: var(--text-muted); font-size: 0.95rem; margin: 0; line-height: 1.6;">I design fast REST APIs and secure databases.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 animate-up delay-2">
					<div class="glass-card" style="padding: 40px 30px; text-align: center; height: 100%; border: 1px solid var(--glass-border); border-radius: var(--radius-lg); background: var(--bg-card); box-shadow: var(--shadow-card);">
						<div style="width: 60px; height: 60px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 20px;">
							<i class="fa fa-book" style="font-size: 1.8rem; color: var(--primary);"></i>
						</div>
						<h4 style="font-family: 'Space Grotesk', sans-serif; font-weight: 700; color: var(--text-primary); margin-bottom: 12px;">Always Learning</h4>
						<p style="color: var(--text-muted); font-size: 0.95rem; margin: 0; line-height: 1.6;">I learn new technologies and frameworks every day.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Testimonial Area =================-->
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