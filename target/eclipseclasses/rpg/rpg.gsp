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
	   		<g:form controller="rpg">	
				<div class="row">
					<div class="col-md-7">
						<!-- Job Description -->
						<div id="floorContainer" class="job-details-wrapper">
							<g:include view="rpg/floor.gsp" />
						</div>
						<!-- End Job Description -->
					</div>
					<!-- Sidebar -->
						<g:include view="rpg/status.gsp" />
					<!-- End Sidebar -->
				</div>
				<div id="moveAction" class="col-lg-6">
					<div class="row">
						<g:actionSubmit value="${message(code:'rpg.page.label.Fight')}" action="playGame" class="btn btn-blue"></g:actionSubmit>
						<g:actionSubmit value="${message(code:'rpg.page.label.Heal')}" action="healHero" class="btn btn-blue"></g:actionSubmit>
					</div>
				</div>
			</g:form>	
		</div>
	</div>
  </div>
</body>
<script>
	
</script>
</html>