<!DOCTYPE html>
<html>
	<head>
		<title><g:message code="global.label.Richard.li"/></title>
		<meta name="layout" content="home"/>
	</head>
	<body>
		<!-- Homepage Slider -->
        <div class="homepage-slider">
        	<div id="sequence">
				<ul class="sequence-canvas">
					<!-- Slide 1 -->
					<li class="bg4">
						<!-- Slide Title -->
						<h2 class="title"><g:message code="home.page.heading.slide.one"/></h2>
						<!-- Slide Text -->
						<h3 class="subtitle"><g:message code="home.page.text.slide.one"/></h3>
						<!-- Slide Image -->
						<img class="slide-img" src="${resource(dir: 'images/homepage-slider', file: 'slide1.png')}" alt="Slide 1" />
					</li>
					<!-- End Slide 1 -->
					<!-- Slide 2 -->
					<li class="bg3">
						<!-- Slide Title -->
						<h2 class="title"><g:message code="home.page.heading.slide.two"/></h2>
						<!-- Slide Text -->
						<h3 class="subtitle"><g:message code="home.page.text.slide.two"/></h3>
						<!-- Slide Image -->
						<img class="slide-img" src="${resource(dir: 'images/homepage-slider', file: 'slide2.png')}" alt="Slide 2" />
					</li>
					<!-- End Slide 2 -->
					<!-- Slide 3 -->
					<li class="bg1">
						<!-- Slide Title -->
						<h2 class="title"><g:message code="home.page.heading.slide.three"/></h2>
						<!-- Slide Text -->
						<h3 class="subtitle"><g:message code="home.page.text.slide.three"/></h3>
						<!-- Slide Image -->
						<img class="slide-img" src="${resource(dir: 'images/homepage-slider', file: 'slide3.png')}" alt="Slide 3" />
					</li>
					<!-- End Slide 3 -->
				</ul>
				<div class="sequence-pagination-wrapper">
					<ul class="sequence-pagination">
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
        </div>
        <!-- End Homepage Slider -->
        
        <!-- Javascripts Begin -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <g:javascript src="jquery-1.9.1.min.js"></g:javascript>
        <g:javascript src="bootstrap.min.js"></g:javascript>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <g:javascript src="jquery.fitvids.js"></g:javascript>
        <g:javascript src="jquery.sequence-min.js"></g:javascript>
        <g:javascript src="jquery.bxslider.js"></g:javascript>
        <g:javascript src="main-menu.js"></g:javascript>
        <g:javascript src="template.js"></g:javascript>
        <!-- Javascripts End -->
	</body>
</html>
