<%@ page import="website.monster.Monster" %>



<div class="fieldcontain ${hasErrors(bean: monsterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="monster.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${monsterInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: monsterInstance, field: 'attack', 'error')} required">
	<label for="attack">
		<g:message code="monster.attack.label" default="Attack" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="attack" type="number" value="${monsterInstance.attack}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: monsterInstance, field: 'hp', 'error')} required">
	<label for="hp">
		<g:message code="monster.hp.label" default="Hp" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hp" type="number" value="${monsterInstance.hp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: monsterInstance, field: 'mp', 'error')} required">
	<label for="mp">
		<g:message code="monster.mp.label" default="Mp" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mp" type="number" value="${monsterInstance.mp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: monsterInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="monster.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="level" type="number" value="${monsterInstance.level}" required=""/>

</div>

