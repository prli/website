<!DOCTYPE html>
<html>
	<head>
		<title><g:message code="global.label.Richard.li"/></title>
		<meta name="layout" content="home"/>
	</head>
	<body>
		<!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1><g:message code="global.menu.page.name.label.About.me"/></h1>
					</div>
				</div>
			</div>
		</div>
		
		<div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3><g:message code="about.me.label.heading1"/></h3>
						<p>
							<g:message code="about.me.text.paragraph1"/>
						</p>
						<h3><g:message code="about.me.label.heading2"/></h3>
						<p>
							<g:message code="about.me.text.paragraph2"/>
						</p>
					</div>
					<div class="col-sm-6">
						<div class="author-photo">
							<img src="${resource(dir: 'images', file: 'profile-picture.jpg')}" alt="Profile picture"/>
						</div>
					</div>
				</div>
			</div>
		</div>
		
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
