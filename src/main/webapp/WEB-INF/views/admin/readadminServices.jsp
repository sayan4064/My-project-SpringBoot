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
	<title>Admin Services | Sayan Metya</title>
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
                    <h2>Admin Dashboard</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/admin/home">Home</a>
                        <a href="${pageContext.request.contextPath}/admin/readallQuery">View Queries</a>
                        <a href="${pageContext.request.contextPath}/admin/readallServices" class="active">View Services</a>
                        <a href="${pageContext.request.contextPath}/admin/saveServices">Add Service</a>
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
                <div class="col-lg-12">
                    <div class="main_title text-center">
                        <h2>Service Offerings</h2>
                        <p>A list of all published services displayed on the client-facing page</p>
                    </div>
                    
                    <div class="admin-card animate-up">
                        <c:choose>
                            <c:when test="${empty services}">
                                <div class="admin-empty-state">
                                    <i class="fa fa-cogs"></i>
                                    <h3>No Services Found</h3>
                                    <p>When you create service offerings, they will appear here.</p>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="admin-table-container">
                                    <table class="admin-table">
                                        <thead>
                                            <tr>
                                                <th width="10%">ID</th>
                                                <th width="15%">Icon / Image</th>
                                                <th width="25%">Service Title</th>
                                                <th width="42%">Description</th>
                                                <th width="8%" class="text-center">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${services}" var="service">
                                                <tr>
                                                    <td>${service.id}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${not empty service.image}">
                                                                <img src="${pageContext.request.contextPath}/img/services/${service.image}" alt="${service.title}" style="max-height: 45px; max-width: 45px; border-radius: 4px; object-fit: contain;">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="text-muted">No Image</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td><strong>${service.title}</strong></td>
                                                    <td>${service.description}</td>
                                                    <td class="text-center">
                                                        <div style="display: flex; gap: 8px; justify-content: center;">
                                                            <a href="${pageContext.request.contextPath}/admin/updateService?id=${service.id}" class="btn-edit" title="Edit Service" style="display: flex; align-items: center; justify-content: center; width: 34px; height: 34px; border-radius: 6px; background: rgba(0, 119, 181, 0.05); border: 1px solid rgba(0, 119, 181, 0.1); color: var(--primary); transition: all 0.3s; text-decoration: none;" onmouseover="this.style.background='var(--primary)'; this.style.color='#fff';" onmouseout="this.style.background='rgba(0, 119, 181, 0.05)'; this.style.color='var(--primary)';">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                            <button onclick="deleteService(${service.id})" class="btn-delete" title="Delete Service">
                                                                <i class="fa fa-trash"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </c:otherwise>
                        </c:choose>
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
    <script>
        function deleteService(id) {
            if (confirm("Are you sure you want to delete this service?")) {
                fetch('${pageContext.request.contextPath}/admin/deleteByIdService?id=' + id, {
                    method: 'DELETE',
                    redirect: 'manual'
                })
                .then(response => {
                    if (response.ok || response.type === 'opaqueredirect') {
                        window.location.reload();
                    } else {
                        alert("Failed to delete service. Please try again.");
                    }
                })
                .catch(error => {
                    window.location.reload();
                });
            }
        }
    </script>
    <!-- Dynamic Toast Notification Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
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
                
                toast.querySelector('.toast-close').addEventListener('click', function() {
                    toast.classList.remove('animate-toast-in');
                    toast.classList.add('animate-toast-out');
                    setTimeout(() => toast.remove(), 400);
                });
                
                setTimeout(function() {
                    if (toast.parentNode) {
                        toast.classList.remove('animate-toast-in');
                        toast.classList.add('animate-toast-out');
                        setTimeout(() => toast.remove(), 400);
                    }
                }, 5000);
            }

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
        });
    </script>
</body>

</html>
