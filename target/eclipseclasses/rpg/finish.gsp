<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="home"/>
<title><g:message code="global.label.Richard.li"/></title>
</head>
<body>
  <div class="body">
  	<!-- Page Title -->
	<div class="section section-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1><g:message code="global.menu.page.name.label.101.floors"/></h1>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
	   	<div class="container">
			<div class="row">
				<div class="col-md-7">
					<!-- Job Description -->
					<div class="job-details-wrapper">
						<p>
							<g:message code="rpg.page.label.Congratulations"/>
						</p>
						<p>
							<g:message code="rpg.page.text.Congratulations"/> 
						</p>
					</div>
					<div>
						<g:link controller="rpg" action="startGame" class="btn btn-green"><g:message code="rpg.page.button.label.Restart"/></g:link>
						<g:link controller="rpg" action="index" class="btn btn-red"><g:message code="rpg.page.button.label.Quit"/></g:link>
					</div>
					<!-- End Job Description -->
				</div>
				<!-- Sidebar -->
					<g:include view="rpg/status.gsp" />
				<!-- End Sidebar -->
			</div>
		</div>
	</div>
  </div>
</body>
</html>