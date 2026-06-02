<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">

<head>
	<base href="${pageContext.request.contextPath}/">
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Contact Sayan Metya - Java Backend Developer. Get in touch for project inquiries and collaborations.">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Contact | Sayan Metya</title>
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
    <!-- Floating Toast Notification Container -->
    <div id="toast-container" class="toast-container"></div>

	<!--================ Start Header Area =================-->
    	<%@ include file="header.jsp" %>
    	<!--================ End Header Area =================-->

    <!--================ Start Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Get In Touch</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/index">Home</a>
                        <a href="${pageContext.request.contextPath}/client/contact">Contact</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->
    
    <!--================Contact Area =================-->
    <section class="contact_area section_gap">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Let's Work Together</h2>
                        <p>Have a project in mind? Fill out the form and I'll get back to you within 24 hours.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Contact Info -->
                <div class="col-lg-4 mb-4 animate-up">
                    <div class="contact_info">
                        <div class="info_item">
                            <i class="lnr lnr-home"></i>
                            <div>
                                <h6>Location</h6>
                                <p>West Bengal, India</p>
                            </div>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-phone-handset"></i>
                            <div>
                                <h6><a href="tel:+91938234064">+91 938234064</a></h6>
                                <p>Mon – Fri, 9am to 6pm</p>
                            </div>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-envelope"></i>
                            <div>
                                <h6><a href="mailto:sayanmetya222@gmail.com">sayanmetya222@gmail.com</a></h6>
                                <p>Send your query anytime!</p>
                            </div>
                        </div>

                        <!-- Social Links -->
                        <div style="margin-top: 32px; padding-top: 24px; border-top: 1px solid rgba(255,255,255,0.08);">
                            <p style="color: var(--text-muted); font-size: 0.8rem; text-transform: uppercase; letter-spacing: 2px; margin-bottom: 16px; font-weight: 600;">Follow Me</p>
                            <div style="display: flex; gap: 10px; flex-wrap: wrap;">
                                <a href="#" style="width: 40px; height: 40px; background: rgba(255,255,255,0.05); border: 1px solid rgba(255,255,255,0.1); border-radius: 50%; display: flex; align-items: center; justify-content: center; color: #94a3b8; text-decoration: none; transition: all 0.3s;" onmouseover="this.style.background='linear-gradient(135deg,#7c3aed,#06b6d4)'; this.style.color='#fff'; this.style.borderColor='transparent';" onmouseout="this.style.background='rgba(255,255,255,0.05)'; this.style.color='#94a3b8'; this.style.borderColor='rgba(255,255,255,0.1)';">
                                    <i class="fa fa-github"></i>
                                </a>
                                <a href="#" style="width: 40px; height: 40px; background: rgba(255,255,255,0.05); border: 1px solid rgba(255,255,255,0.1); border-radius: 50%; display: flex; align-items: center; justify-content: center; color: #94a3b8; text-decoration: none; transition: all 0.3s;" onmouseover="this.style.background='linear-gradient(135deg,#7c3aed,#06b6d4)'; this.style.color='#fff'; this.style.borderColor='transparent';" onmouseout="this.style.background='rgba(255,255,255,0.05)'; this.style.color='#94a3b8'; this.style.borderColor='rgba(255,255,255,0.1)';">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                                <a href="#" style="width: 40px; height: 40px; background: rgba(255,255,255,0.05); border: 1px solid rgba(255,255,255,0.1); border-radius: 50%; display: flex; align-items: center; justify-content: center; color: #94a3b8; text-decoration: none; transition: all 0.3s;" onmouseover="this.style.background='linear-gradient(135deg,#7c3aed,#06b6d4)'; this.style.color='#fff'; this.style.borderColor='transparent';" onmouseout="this.style.background='rgba(255,255,255,0.05)'; this.style.color='#94a3b8'; this.style.borderColor='rgba(255,255,255,0.1)';">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="col-lg-8 animate-up delay-1">


                    <form action="${pageContext.request.contextPath}/client/saveContact" method="post" class="row contact_form" id="contactForm" novalidate="novalidate">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Your Full Name" value="${contactDto.name}">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email Address" value="${contactDto.email}">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" value="${contactDto.subject}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Your Message here...">${contactDto.message}</textarea>
                            </div>
                        </div>
                        <div class="col-md-12 text-right" style="margin-top: 8px;">
                            <button type="submit" value="submit" class="primary_btn">
                                <span>Send Message &rarr;</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Map -->
            <div id="mapBox" class="mapBox" 
                data-lat="40.701083" 
                data-lon="-74.1522848" 
                data-zoom="13" 
                data-info="West Bengal, India"
                data-mlat="40.701083"
                data-mlon="-74.1522848">
            </div>
        </div>
    </section>
    <!--================Contact Area =================-->
        
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

    <!-- Dynamic Toast Notification Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Function to display dynamic toast popup
            function showToast(message, type = 'success') {
                const container = document.getElementById('toast-container');
                if (!container) return;
                
                const toast = document.createElement('div');
                toast.className = 'toast-box toast-' + type + ' animate-toast-in';
                
                const icon = type === 'success' ? '✓' : '✗';
                toast.innerHTML = 
                    '<span class="toast-icon">' + icon + '</span>' +
                    '<span class="toast-message">' + message + '</span>' +
                    '<span class="toast-close">&times;</span>';
                
                container.appendChild(toast);
                
                // Manual close handler
                toast.querySelector('.toast-close').addEventListener('click', function() {
                    toast.classList.remove('animate-toast-in');
                    toast.classList.add('animate-toast-out');
                    setTimeout(() => toast.remove(), 400);
                });
                
                // Auto close after 5 seconds
                setTimeout(function() {
                    if (toast.parentNode) {
                        toast.classList.remove('animate-toast-in');
                        toast.classList.add('animate-toast-out');
                        setTimeout(() => toast.remove(), 400);
                    }
                }, 5000);
            }

            // Spawn Toasts from JSTL session attributes
            <c:if test="${not empty message}">
                <c:choose>
                    <c:when test="${fn:contains(fn:toLowerCase(message), 'wrong') or fn:contains(fn:toLowerCase(message), 'fail') or fn:contains(fn:toLowerCase(message), 'error')}">
                        showToast("${fn:escapeXml(message)}", "error");
                    </c:when>
                    <c:otherwise>
                        showToast("${fn:escapeXml(message)}", "success");
                    </c:otherwise>
                </c:choose>
            </c:if>

            <c:if test="${not empty emailErrors}">
                showToast("${fn:escapeXml(emailErrors)}", "error");
            </c:if>

            <c:if test="${not empty errors}">
                <c:forEach items="${errors}" var="error">
                    showToast("${fn:escapeXml(error.defaultMessage)}", "error");
                </c:forEach>
            </c:if>
        });
    </script>
</body>

</html>