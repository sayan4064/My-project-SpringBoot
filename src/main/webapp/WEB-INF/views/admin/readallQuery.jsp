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
                    <h2>Admin Dashboard</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/admin/home">Home</a>
                        <a href="${pageContext.request.contextPath}/admin/readallQuery" class="active">View Queries</a>
                        <a href="${pageContext.request.contextPath}/admin/readallServices">View Services</a>
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
                        <h2>Client Messages &amp; Queries</h2>
                        <p>A list of all messages received from the contact form submissions</p>
                    </div>
                    
                    <div class="admin-card animate-up">
                        <c:choose>
                            <c:when test="${empty contacts}">
                                <div class="admin-empty-state">
                                    <i class="fa fa-envelope-o"></i>
                                    <h3>No Messages Found</h3>
                                    <p>When clients send you message inquiries, they will appear here.</p>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="admin-table-container">
                                    <table class="admin-table">
                                        <thead>
                                            <tr>

                                                <th width="15%">Date &amp; Time</th>
                                                <th width="18%">Name</th>
                                                <th width="20%">Email</th>
                                                <th width="15%">Subject</th>
                                                <th width="16%">Message</th>
                                                <th width="8%" class="text-center">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${contacts}" var="contact">
                                                <tr>

                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${not empty contact.datetime}">
                                                                ${contact.datetime}
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="text-muted">N/A</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>${contact.name}</td>
                                                    <td><a href="mailto:${contact.email}" style="color: var(--primary); font-weight: 500;">${contact.email}</a></td>
                                                    <td><strong>${contact.subject}</strong></td>
                                                    <td>${contact.message}</td>
                                                    <td class="text-center">
                                                        <button onclick="deleteContact(${contact.id})" class="btn-delete" title="Delete Inquiry">
                                                            <i class="fa fa-trash"></i>
                                                        </button>
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
        function deleteContact(id) {
            if (confirm("Are you sure you want to delete this query?")) {
                fetch('${pageContext.request.contextPath}/admin/deleteById?id=' + id, {
                    method: 'DELETE',
                    redirect: 'manual'
                })
                .then(response => {
                    // Since the controller returns a 302 redirect, redirect: 'manual' returns an opaqueredirect response.
                    // This indicates the deletion succeeded and triggered the redirect.
                    if (response.ok || response.type === 'opaqueredirect') {
                        window.location.reload();
                    } else {
                        alert("Failed to delete contact query. Please try again.");
                    }
                })
                .catch(error => {
                    // In a browser context, fetch with redirect: 'manual' throws a TypeError when a redirect occurs.
                    // Since a successful deletion triggers a redirect, we reload the page here to update the list.
                    window.location.reload();
                });
            }
        }
    </script>
</body>

</html>
