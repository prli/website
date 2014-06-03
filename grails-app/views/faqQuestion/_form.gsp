<%@ page import="website.FaqQuestion" %>



<div class="fieldcontain ${hasErrors(bean: faqQuestionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="faqQuestion.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${faqQuestionInstance?.question}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: faqQuestionInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="faqQuestion.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="answer" required="" value="${faqQuestionInstance?.answer}"/>

</div>

