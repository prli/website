<div class="header">
	<!-- Navigation & Logo-->
       <div class="mainmenu-wrapper">
        <div class="container">
	        <nav id="mainmenu" class="mainmenu">
				<ul>
					<li class="logo-wrapper"><g:link controller="home" action="index"><img src="${resource(dir: 'images', file: 'web-logo.png')}" alt="Richard Li"/></g:link></li>
					<g:if test="${activePage == 'homePage'}"><li class="active"></g:if><g:else><li></g:else>
						<g:link controller="home" action="index"><g:message code="global.menu.page.name.label.Home"/></g:link>
					</li>
					<g:if test="${activePage == 'aboutMePage'}"><li class="active"></g:if><g:else><li></g:else>
						<g:link controller="home" action="aboutMe"><g:message code="global.menu.page.name.label.About.me"/></g:link>
					</li>
					<g:if test="${activePage == 'developingWithGrailsPage'}"><li class="active"></g:if><g:else><li></g:else>
						<g:link controller="developingWithGrails" action="index"><g:message code="global.menu.page.name.label.Developing.with.grails"/></g:link>
					</li>
					<g:if test="${activePage == 'contactMePage'}"><li class="active"></g:if><g:else><li></g:else>
						<g:link controller="home" action="contactMe"><g:message code="global.menu.page.name.label.Contact.me"/></g:link>
					</li>
					<g:if test="${activePage == 'faqPage'}"><li class="active"></g:if><g:else><li></g:else>
						<g:link controller="home" action="faq"><g:message code="global.menu.page.name.label.Faq"/></g:link>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</div>