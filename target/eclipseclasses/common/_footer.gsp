<!-- Footer -->
<div class="footer">
	<div class="container">
	 	<div class="row">
	 		 			
			<div class="col-footer col-md-4 col-xs-12">
				<h3><g:message code="footer.label.Navigate"/></h3>
				<ul class="no-list-style footer-navigate-section">
					<li><g:link controller="home" action="index"><g:message code="global.menu.page.name.label.Home"/></g:link></li>
					<li><g:link controller="home" action="aboutMe"><g:message code="global.menu.page.name.label.About.me"/></g:link></li>
					<li><g:link controller="developingWithGrails"><g:message code="global.menu.page.name.label.Developing.with.grails"/></g:link></li>
					<li><g:link controller="home" action="contactMe"><g:message code="global.menu.page.name.label.Contact.me"/></g:link></li>
					<li><g:link controller="home" action="faq"><g:message code="global.menu.page.name.label.Faq"/></g:link></li>
				</ul>
			</div>
 		
			<div class="col-footer col-md-5 col-xs-12">
				<h3><g:message code="footer.label.Contacts"/></h3>
				<p class="contact-us-details">
	 				<b><g:message code="contact.info.label.Address.colon"/></b> <g:message code="contact.info.data.Address"/><br/>
	 				<b><g:message code="contact.info.label.Phone.colon"/></b> <g:message code="contact.info.data.Phone"/><br/>
	 				<b><g:message code="contact.info.label.Email.colon"/></b> <g:message code="contact.info.data.Email"/>
	 			</p>
			</div>
			
			<div class="col-footer col-md-3 col-xs-12" id="social-medias">
				<h3><g:message code="footer.label.Stay.connected"/></h3>
				<div class="footer-stay-connected no-list-style">
					<div class="col-md-4 col-xs-6 col-lg-4"><a href="https://www.facebook.com/richard.li.9275" class="facebook" target="_blank"></a></div>
					<div class="col-md-4 col-xs-6 col-lg-4"><a href="https://www.linkedin.com/in/peiranli" class="linkedin" target="_blank"></a></div>
				</div>
			</div>
			
		</div>
		
	 	<div class="row">
	 		<div class="col-md-12">
	 			<div class="footer-copyright"><g:message code="footer.text.Copy.right"/></div>
	 		</div>
	 	</div>
	</div>
</div>

<script>
	$("#social-medias a").click(function(){
		windows.open($(this).);
	});
</script>

<r:layoutResources/>
