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
                        <a href="${pageContext.request.contextPath}/client/about" class="active">About</a>
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
                            I'm <strong style="color: var(--primary);">Sayan Metya</strong>, an aspiring Java Backend Developer from West Bengal, India. I enjoy building web applications and learning modern backend technologies.
                        </p>
                        <p>
                           My skills include Java 17, Spring Boot 3, Spring Data JPA, Hibernate, MySQL, Maven, JSP, and JSTL. I am passionate about coding, solving problems, and continuously improving my development skills through hands-on projects.
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
                        <h2>Tech Stack</h2>
                        <p>Tools and technologies I use to build world-class software products.</p>
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
                            <span class="lage">10+</span>
                            <span class="smll">Coding<br>Projects<br>Built</span>
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