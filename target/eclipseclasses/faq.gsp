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
						<h1><g:message code="global.menu.page.name.label.Faq"/></h1>
					</div>
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12 faq-wrapper">
						<div class="panel-group" id="accordion2">
							<h3>General Questions</h3>
							<g:each in="${questions}" var="faqQuestion" status="i">
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse11">
										${ faqQuestion.question }
									</a>
								</div>
								<div id="collapse11" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>${ faqQuestion.answer }</p>
									</div>
								</div>
							</div>
							</g:each>
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
