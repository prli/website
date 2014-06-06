
<%@ page import="website.rpg.Monster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monster.label', default: 'Monster')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-monster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-monster" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'monster.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="attack" title="${message(code: 'monster.attack.label', default: 'Attack')}" />
					
						<g:sortableColumn property="hp" title="${message(code: 'monster.hp.label', default: 'Hp')}" />
					
						<g:sortableColumn property="mp" title="${message(code: 'monster.mp.label', default: 'Mp')}" />
					
						<g:sortableColumn property="level" title="${message(code: 'monster.level.label', default: 'Level')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${monsterInstanceList}" status="i" var="monsterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${monsterInstance.id}">${fieldValue(bean: monsterInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: monsterInstance, field: "attack")}</td>
					
						<td>${fieldValue(bean: monsterInstance, field: "hp")}</td>
					
						<td>${fieldValue(bean: monsterInstance, field: "mp")}</td>
					
						<td>${fieldValue(bean: monsterInstance, field: "level")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${monsterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
