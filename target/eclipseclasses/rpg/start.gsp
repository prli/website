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
						<h3>
							<g:message code="rpg.page.label.Instructions"/>
						</h3>
						<p>
							<g:message code="rpg.page.text.Instructions"/>
						</p>
					</div>
					<div>
						<g:link controller="rpg" action="startGame" class="btn btn-green"><g:message code="rpg.page.button.label.Start"/></g:link>
					</div>
					<!-- End Job Description -->
				</div>
				<!-- Sidebar -->
				<div class="col-md-4 col-md-offset-1">
					
				</div>
				<!-- End Sidebar -->
			</div>
		</div>
	</div>
	</div>
</body>
</html>