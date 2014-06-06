<%@ page import="website.rpg.QuizQuestion" %>



<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="quizQuestion.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${quizQuestionInstance?.question}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="quizQuestion.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="answer" required="" value="${quizQuestionInstance?.answer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="quizQuestion.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${quizQuestionInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="quizQuestion.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${website.rpg.Category.list()}" optionKey="id" required="" value="${quizQuestionInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'regexp', 'error')} required">
	<label for="regexp">
		<g:message code="quizQuestion.regexp.label" default="Regexp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="regexp" required="" value="${quizQuestionInstance?.regexp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quizQuestionInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="quizQuestion.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="score" type="number" value="${quizQuestionInstance.score}" required=""/>

</div>

