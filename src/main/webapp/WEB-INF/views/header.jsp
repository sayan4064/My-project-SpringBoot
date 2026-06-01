	<!--================ Start Header Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand -->
					<a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/client/index"><img src="img/logo.png" alt="Sayan Metya"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Nav Links -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav justify-content-end">
							<li class="nav-item ${pageContext.request.requestURI.contains('/index') ? 'active' : ''}"><a class="nav-link" href="${pageContext.request.contextPath}/client/index">Home</a></li>
							<li class="nav-item ${pageContext.request.requestURI.contains('/about') ? 'active' : ''}"><a class="nav-link" href="${pageContext.request.contextPath}/client/about">About</a></li>
							<li class="nav-item ${pageContext.request.requestURI.contains('/service') ? 'active' : ''}"><a class="nav-link" href="${pageContext.request.contextPath}/client/service">Services</a></li>
							<li class="nav-item ${pageContext.request.requestURI.contains('/contact') ? 'active' : ''}"><a class="nav-link" href="${pageContext.request.contextPath}/client/contact">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Area =================-->

	<script>
	  // Sticky header on scroll
	  window.addEventListener('scroll', function() {
	    const header = document.querySelector('.header_area');
	    if (header) {
	      if (window.scrollY > 50) {
	        header.classList.add('sticky');
	      } else {
	        header.classList.remove('sticky');
	      }
	    }
	  });
	</script>