
<%@ page import="website.monster.Monster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monster.label', default: 'Monster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-monster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-monster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list monster">
			
				<g:if test="${monsterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="monster.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${monsterInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monsterInstance?.attack}">
				<li class="fieldcontain">
					<span id="attack-label" class="property-label"><g:message code="monster.attack.label" default="Attack" /></span>
					
						<span class="property-value" aria-labelledby="attack-label"><g:fieldValue bean="${monsterInstance}" field="attack"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monsterInstance?.hp}">
				<li class="fieldcontain">
					<span id="hp-label" class="property-label"><g:message code="monster.hp.label" default="Hp" /></span>
					
						<span class="property-value" aria-labelledby="hp-label"><g:fieldValue bean="${monsterInstance}" field="hp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monsterInstance?.mp}">
				<li class="fieldcontain">
					<span id="mp-label" class="property-label"><g:message code="monster.mp.label" default="Mp" /></span>
					
						<span class="property-value" aria-labelledby="mp-label"><g:fieldValue bean="${monsterInstance}" field="mp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monsterInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="monster.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${monsterInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:monsterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${monsterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
