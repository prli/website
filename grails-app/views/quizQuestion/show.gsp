
<%@ page import="website.rpg.QuizQuestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quizQuestion.label', default: 'QuizQuestion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quizQuestion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quizQuestion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quizQuestion">
			
				<g:if test="${quizQuestionInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="quizQuestion.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:fieldValue bean="${quizQuestionInstance}" field="question"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quizQuestionInstance?.answer}">
				<li class="fieldcontain">
					<span id="answer-label" class="property-label"><g:message code="quizQuestion.answer.label" default="Answer" /></span>
					
						<span class="property-value" aria-labelledby="answer-label"><g:fieldValue bean="${quizQuestionInstance}" field="answer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quizQuestionInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="quizQuestion.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${quizQuestionInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quizQuestionInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="quizQuestion.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${quizQuestionInstance?.category?.id}">${quizQuestionInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${quizQuestionInstance?.regexp}">
				<li class="fieldcontain">
					<span id="regexp-label" class="property-label"><g:message code="quizQuestion.regexp.label" default="Regexp" /></span>
					
						<span class="property-value" aria-labelledby="regexp-label"><g:fieldValue bean="${quizQuestionInstance}" field="regexp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quizQuestionInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="quizQuestion.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${quizQuestionInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:quizQuestionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${quizQuestionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
