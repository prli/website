<g:hiddenField name="score" value="${score}" />
<g:hiddenField name="heroHp" value="${hero.hp}" />
<g:hiddenField name="heroMp" value="${hero.mp}" />
<div id="statusContainer" class="col-md-4 col-md-offset-1">
	<h4><g:message code="rpg.page.label.Status"/></h4>
	<table class="jobs-list">
		<tbody>
			<tr>
				<td class="job-position">
					<g:message code="rpg.page.label.Score"/>: ${ score }
				</td>
			</tr>
			<tr>
				<td class="job-position">
					<g:message code="rpg.page.label.Hp"/>: ${ hero.hp }
				</td>
			</tr>
			<tr>
				<td class="job-position">
					<g:message code="rpg.page.label.Mp"/>: ${ hero.mp }
				</td>
			</tr>
		</tbody>
	</table>
</div>