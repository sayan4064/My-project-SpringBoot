<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>
	<base href="${pageContext.request.contextPath}/">
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Sayan Metya - Java Backend Developer Portfolio. Hire Me for expert Spring Boot, REST API and Backend Development.">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Sayan Metya | Java Backend Developer</title>
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

	<!--================ Start Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-7">
						<div class="banner_content">
							<h1 class="hero_name">Sayan Metya</h1>
							
							<p class="hero_bio">
								A passionate Java Backend Developer who always thrives to work on 
								end to end products which develop sustainable and scalable 
								social and technical systems to create impact.
							</p>
							<div class="hero_social_links">
								<a href="https://github.com" target="_blank" class="social_icon github"><i class="fa fa-github"></i></a>
								<a href="https://linkedin.com" target="_blank" class="social_icon linkedin"><i class="fa fa-linkedin"></i></a>
								<a href="mailto:sayanmetya222@gmail.com" class="social_icon google"><i class="fa fa-envelope"></i></a>
								<a href="https://twitter.com" target="_blank" class="social_icon twitter"><i class="fa fa-twitter"></i></a>
								<a href="https://facebook.com" target="_blank" class="social_icon facebook"><i class="fa fa-facebook"></i></a>
							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="home_right_img">
							<img class="" src="img/banner/home-right.png" alt="Sayan Metya - Backend Developer">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->

	<!--================ Start Stats Area =================-->
	<section class="stats_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 mb-4 animate-up">
					<div class="stat-card">
						<div class="stat-num">10+</div>
						<div class="stat-label">Years Experience</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-1">
					<div class="stat-card">
						<div class="stat-num">50+</div>
						<div class="stat-label">Projects Completed</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-2">
					<div class="stat-card">
						<div class="stat-num">30+</div>
						<div class="stat-label">Happy Clients</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-3">
					<div class="stat-card">
						<div class="stat-num">5★</div>
						<div class="stat-label">Client Rating</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Stats Area =================-->

	<!--================ Start About Us Area =================-->
	<section class="about_area section_gap">
		<div class="container">
			<div class="row justify-content-start align-items-center">
				<div class="col-lg-5 animate-up">
					<div class="about_img">
						<img class="" src="img/about-us.png" alt="About Sayan Metya">
					</div>
				</div>

				<div class="col-lg-7 animate-up delay-2">
					<div class="main_title text-left">
						<h2>Let's Introduce<br>About Myself</h2>
						<p>
							I am a passionate Java Backend Developer with expertise in Spring Boot, REST APIs, 
							and microservices architecture. I love building robust, scalable, and efficient 
							backend systems that power modern web applications.
						</p>
						<p>
							With a strong foundation in Java ecosystem technologies, I specialize in designing 
							clean architecture, optimizing database queries, and crafting secure APIs. 
							I am always eager to learn and adopt new technologies.
						</p>
						<!-- Skill Bars -->
						<div style="margin-top: 28px;">
							<div class="skill-bar">
								<div class="skill-label"><span>Java / Spring Boot</span><span>95%</span></div>
								<div class="skill-track"><div class="skill-fill" data-width="95"></div></div>
							</div>
							<div class="skill-bar">
								<div class="skill-label"><span>REST API Development</span><span>90%</span></div>
								<div class="skill-track"><div class="skill-fill" data-width="90"></div></div>
							</div>
							<div class="skill-bar">
								<div class="skill-label"><span>Database (SQL / JPA)</span><span>85%</span></div>
								<div class="skill-track"><div class="skill-fill" data-width="85"></div></div>
							</div>
							<div class="skill-bar">
								<div class="skill-label"><span>Docker / Microservices</span><span>78%</span></div>
								<div class="skill-track"><div class="skill-fill" data-width="78"></div></div>
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
						<h2>Tech Stack &amp; Tools</h2>
						<p>Technologies and tools I work with regularly to build amazing products</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-8 animate-up delay-1">
					<div class="row justify-content-center">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo1.png" alt="Brand 1">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo2.png" alt="Brand 2">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo3.png" alt="Brand 3">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo4.png" alt="Brand 4">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo5.png" alt="Brand 5">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo6.png" alt="Brand 6">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo7.png" alt="Brand 7">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo8.png" alt="Brand 8">
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center">
									<img src="img/brands/logo9.png" alt="Brand 9">
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
								<p>Call us now</p>
								<h3>+91 938234064</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Brand Area =================-->

	<!--================ Start Features Area =================-->
	<section class="features_area" style="padding: 100px 0;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center animate-up">
					<div class="main_title">
						<h2>Service Offers</h2>
						<p>
							Providing top-notch backend development services to help your business grow 
							and scale efficiently.
						</p>
					</div>
				</div>
			</div>
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
		</div>
	</section>
	<!--================ End Features Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="testimonial_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center animate-up">
					<div class="main_title">
						<h2>What Clients Say</h2>
						<p>Don't just take my word for it — hear from the people I've worked with.</p>
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
									<p>Sayan built a blazing-fast REST API for our platform. His deep understanding of Spring Boot and clean code practices made collaboration a pleasure. Highly recommend!</p>
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
									<p>Excellent backend architecture for our e-commerce app. Delivered on time, well-documented and production-ready. Will definitely hire again for future projects!</p>
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
									<p>Impressed by the quality of code and attention to detail. The microservices architecture he implemented scaled perfectly when our traffic grew 10x. Outstanding work!</p>
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