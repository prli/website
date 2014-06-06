
<%@ page import="website.rpg.QuizQuestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quizQuestion.label', default: 'QuizQuestion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quizQuestion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quizQuestion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="question" title="${message(code: 'quizQuestion.question.label', default: 'Question')}" />
					
						<g:sortableColumn property="answer" title="${message(code: 'quizQuestion.answer.label', default: 'Answer')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'quizQuestion.author.label', default: 'Author')}" />
					
						<th><g:message code="quizQuestion.category.label" default="Category" /></th>
					
						<g:sortableColumn property="regexp" title="${message(code: 'quizQuestion.regexp.label', default: 'Regexp')}" />
					
						<g:sortableColumn property="score" title="${message(code: 'quizQuestion.score.label', default: 'Score')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quizQuestionInstanceList}" status="i" var="quizQuestionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quizQuestionInstance.id}">${fieldValue(bean: quizQuestionInstance, field: "question")}</g:link></td>
					
						<td>${fieldValue(bean: quizQuestionInstance, field: "answer")}</td>
					
						<td>${fieldValue(bean: quizQuestionInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: quizQuestionInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: quizQuestionInstance, field: "regexp")}</td>
					
						<td>${fieldValue(bean: quizQuestionInstance, field: "score")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quizQuestionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
