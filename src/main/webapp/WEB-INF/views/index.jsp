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
								Aspiring Java Backend Developer skilled in Java 17, Spring Boot 3, Spring Data JPA, Hibernate, MySQL, Maven, JSP, and JSTL. Passionate about building web applications, solving problems through code, and continuously learning modern backend technologies.

							</p>
							<div class="hero_social_links">
								<a href="https://github.com/sayan4064" target="_blank" class="social_icon github"><i class="fa fa-github"></i></a>
								<a href="https://www.linkedin.com/in/sayan-metya-9b0bb2306/" target="_blank" class="social_icon linkedin"><i class="fa fa-linkedin"></i></a>
								<a href="mailto:sayanmetya222@gmail.com" class="social_icon google"><i class="fa fa-envelope"></i></a>
								<a href="https://x.com/SMetya55737" target="_blank" class="social_icon twitter"><img src="img/x-logo.png" class="x-logo-icon" alt="X"></a>
								<a href="https://www.facebook.com/metyasayan05" target="_blank" class="social_icon facebook"><i class="fa fa-facebook"></i></a>
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
						<div class="stat-num">5+</div>
						<div class="stat-label">Projects Built</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-1">
					<div class="stat-card">
						<div class="stat-num">1+</div>
						<div class="stat-label">Years Active Coding</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-2">
					<div class="stat-card">
						<div class="stat-num">100%</div>
						<div class="stat-label">Dedicated &amp; Eager</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 animate-up delay-3">
					<div class="stat-card">
						<div class="stat-num">15/6</div>
						<div class="stat-label">Always Learning</div>
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
							I am an aspiring Java Backend Developer passionate about building web applications and learning modern technologies. My skills include Java 17, Spring Boot 3, Spring Data JPA, Hibernate, MySQL, Maven, JSP, and JSTL.
                            <br>
                            I enjoy solving problems through code, working on projects, and continuously improving my backend development skills.

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
							
						</div>
						<a class="primary_btn" href="${pageContext.request.contextPath}/docs/resume.pdf" target="_blank" style="margin-top: 20px;"><span>Download CV</span></a>
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
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-code" style="color: #0077b5;"></i>
								<span>Java 17</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-leaf" style="color: #6db33f;"></i>
								<span>Spring Boot 3</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-database" style="color: #3b71ca;"></i>
								<span>Spring Data JPA</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-random" style="color: #bfa054;"></i>
								<span>Hibernate ORM</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-server" style="color: #f29111;"></i>
								<span>MySQL</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-cube" style="color: #c71a36;"></i>
								<span>Maven</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-html5" style="color: #e34f26;"></i>
								<span>JSP</span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 mb-4">
							<div class="tech-badge-card">
								<i class="fa fa-tags" style="color: #7c3aed;"></i>
								<span>JSTL</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 animate-up delay-2">
					<div class="client-info">
						<div class="d-flex mb-50">

							<span class="smll">Focus on Projects</span>
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