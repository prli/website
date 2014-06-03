
<%@ page import="website.FaqQuestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'faqQuestion.label', default: 'FaqQuestion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-faqQuestion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-faqQuestion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="question" title="${message(code: 'faqQuestion.question.label', default: 'Question')}" />
					
						<g:sortableColumn property="answer" title="${message(code: 'faqQuestion.answer.label', default: 'Answer')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${faqQuestionInstanceList}" status="i" var="faqQuestionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${faqQuestionInstance.id}">${fieldValue(bean: faqQuestionInstance, field: "question")}</g:link></td>
					
						<td>${fieldValue(bean: faqQuestionInstance, field: "answer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${faqQuestionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
