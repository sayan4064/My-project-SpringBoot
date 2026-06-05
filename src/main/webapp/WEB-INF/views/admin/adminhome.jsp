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
	<link class="icon" href="img/favicon.png" type="image/png">
	<title>Admin Dashboard | Sayan Metya</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- Modern UI Override -->
	<link rel="stylesheet" href="css/modern-override.css">
	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>

	<!--================ Start Header Area =================-->
    <%@ include file="../header.jsp" %>
    <!--================ End Header Area =================-->

    <!--================ Start Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Admin Console</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/index">Home</a>
                        <a href="${pageContext.request.contextPath}/admin/home" class="active">Dashboard</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->
    
    <!--================ Start Admin Main Content Area =================-->
    <section class="section_gap">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center animate-up">
                    <div class="main_title">
                        <h2>Welcome to the Admin Control Panel</h2>
                        <p>Manage contact inquiries, services, and core settings of your portfolio website.</p>
                    </div>
                </div>
            </div>
            
            <div class="row justify-content-center" style="margin-top: 40px; gap: 30px 0;">
                <!-- Card 1: Client Messages -->
                <div class="col-lg-4 col-md-6 d-flex animate-up">
                    <div class="feature_item" style="width: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                        <div>
                            <div style="width: 70px; height: 70px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 24px;">
                                <i class="fa fa-envelope" style="font-size: 2rem; color: var(--primary);"></i>
                            </div>
                            <h4>Client Queries</h4>
                            <p>View and manage inbox messages and inquiries sent by clients from the contact form.</p>
                        </div>
                        <div class="mt-4">
                            <a href="${pageContext.request.contextPath}/admin/readallQuery" class="primary_btn" style="line-height: 38px; padding: 0 24px; font-size: 0.85rem;">
                                <span>View Queries &rarr;</span>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Card 2: View Services -->
                <div class="col-lg-4 col-md-6 d-flex animate-up delay-1">
                    <div class="feature_item" style="width: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                        <div>
                            <div style="width: 70px; height: 70px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 24px;">
                                <i class="fa fa-cogs" style="font-size: 2rem; color: var(--primary);"></i>
                            </div>
                            <h4>Active Services</h4>
                            <p>Review the list of portfolio services currently visible to users. Delete or modify items.</p>
                        </div>
                        <div class="mt-4">
                            <a href="${pageContext.request.contextPath}/admin/readallServices" class="primary_btn" style="line-height: 38px; padding: 0 24px; font-size: 0.85rem;">
                                <span>Manage Services &rarr;</span>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Card 3: Add Service -->
                <div class="col-lg-4 col-md-6 d-flex animate-up delay-2">
                    <div class="feature_item" style="width: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                        <div>
                            <div style="width: 70px; height: 70px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 24px;">
                                <i class="fa fa-plus-circle" style="font-size: 2rem; color: var(--primary);"></i>
                            </div>
                            <h4>Add Service</h4>
                            <p>Add new service cards to your website. Provide titles, descriptions, and custom icon images.</p>
                        </div>
                        <div class="mt-4">
                            <a href="${pageContext.request.contextPath}/admin/saveServices" class="primary_btn" style="line-height: 38px; padding: 0 24px; font-size: 0.85rem;">
                                <span>Create Service &rarr;</span>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Card 4: Upload Resume -->
                <div class="col-lg-4 col-md-6 d-flex animate-up delay-3">
                    <div class="feature_item" style="width: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                        <div>
                            <div style="width: 70px; height: 70px; border-radius: 50%; background: var(--primary-glow); display: flex; align-items: center; justify-content: center; margin: 0 auto 24px;">
                                <i class="fa fa-file-text" style="font-size: 2rem; color: var(--primary);"></i>
                            </div>
                            <h4>Upload Resume</h4>
                            <p>Upload your latest CV / resume file in PDF format so clients can download it directly.</p>
                        </div>
                        <div class="mt-4">
                            <a href="${pageContext.request.contextPath}/admin/uploadResume" class="primary_btn" style="line-height: 38px; padding: 0 24px; font-size: 0.85rem;">
                                <span>Upload CV &rarr;</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Admin Main Content Area =================-->

    <!--================Footer Area =================-->
    <%@ include file="../footer.jsp" %>
    <!--================End Footer Area =================-->

    <!-- Optional JavaScript -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="js/theme.js"></script>
    <script src="js/modern-ui.js"></script>
</body>

</html>