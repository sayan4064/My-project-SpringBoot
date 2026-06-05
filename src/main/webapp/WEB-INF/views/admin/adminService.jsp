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
	<link class="icon" href="img/favicon.png" type="image/png">
	<title>Upload Services | Admin Panel</title>
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

    <!-- Dynamic Toast Notification Container -->
    <div id="toast-container" class="toast-container"></div>

	<!--================ Start Header Area =================-->
    <%@ include file="../header.jsp" %>
    <!--================ End Header Area =================-->

    <!--================ Start Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Admin Services</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/index">Home</a>
                        <a href="${pageContext.request.contextPath}/admin/saveServices">Upload Service</a>
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
                <div class="col-lg-8 col-md-10">
                    <div class="main_title text-center">
                        <h2>Upload Service Offerings</h2>
                        <p>Configure and publish service cards displayed on the client-facing services page.</p>
                    </div>
                    
                    <div class="admin-card animate-up" style="padding: 40px;">
                        <h3 class="mb-4" style="font-family: 'Space Grotesk', sans-serif; color: var(--text-primary); font-weight: 700; border-bottom: 2px solid #edf2f7; padding-bottom: 15px;">New Service Details</h3>
                        
                        <form action="${pageContext.request.contextPath}/admin/saveServices" method="POST" enctype="multipart/form-data" class="row contact_form">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="title" style="font-weight: 600; color: var(--text-primary); font-family: 'Space Grotesk', sans-serif;">Service Title</label>
                                    <input type="text" class="form-control" id="title" name="title" placeholder="e.g. Backend Development" required>
                                </div>
                            </div>
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="description" style="font-weight: 600; color: var(--text-primary); font-family: 'Space Grotesk', sans-serif;">Service Description</label>
                                    <textarea class="form-control" name="description" id="description" rows="4" placeholder="Describe the service details (min 10 characters)..." required></textarea>
                                </div>
                            </div>
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="image" style="font-weight: 600; color: var(--text-primary); font-family: 'Space Grotesk', sans-serif;">Service Icon / Illustration</label>
                                    <div class="custom-file-upload" style="border: 2px dashed #cbd5e0; padding: 25px; border-radius: var(--radius-lg); text-align: center; background: #f8fafc; cursor: pointer; position: relative; transition: var(--transition);">
                                        <i class="fa fa-cloud-upload" style="font-size: 2.5rem; color: var(--primary); margin-bottom: 10px; display: block;"></i>
                                        <span id="file-label" style="font-weight: 500; color: var(--text-muted);">Choose image file...</span>
                                        <input type="file" id="image" name="image" accept="image/*" required style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;">
                                    </div>
                                    <small class="text-muted mt-2 d-block">Recommended dimensions: 120x120px png file. Max file size: 2MB.</small>
                                </div>
                            </div>
                            
                            <div class="col-md-12 text-right mt-4">
                                <button type="submit" class="primary_btn">
                                    <span>Publish Service &rarr;</span>
                                </button>
                            </div>
                        </form>
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

    <!-- File selection helper script -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const fileInput = document.getElementById("image");
            const fileLabel = document.getElementById("file-label");
            const dropzone = document.querySelector(".custom-file-upload");
            
            if (fileInput && fileLabel) {
                fileInput.addEventListener("change", function(e) {
                    if (fileInput.files.length > 0) {
                        fileLabel.textContent = fileInput.files[0].name;
                        fileLabel.style.color = "var(--primary)";
                        dropzone.style.borderColor = "var(--primary)";
                        dropzone.style.background = "rgba(0, 119, 181, 0.02)";
                    } else {
                        fileLabel.textContent = "Choose image file...";
                        fileLabel.style.color = "var(--text-muted)";
                        dropzone.style.borderColor = "#cbd5e0";
                        dropzone.style.background = "#f8fafc";
                    }
                });
            }
        });
    </script>

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

            // Spawn Toasts from JSTL attributes
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

            <c:if test="${not empty error}">
                showToast("${fn:escapeXml(error)}", "error");
            </c:if>
            
            <c:if test="${not empty fileError}">
                showToast("${fn:escapeXml(fileError)}", "error");
            </c:if>

            <c:if test="${not empty errors}">
                <c:forEach items="${errors}" var="err">
                    showToast("${fn:escapeXml(err.defaultMessage)}", "error");
                </c:forEach>
            </c:if>
        });
    </script>
</body>

</html>
