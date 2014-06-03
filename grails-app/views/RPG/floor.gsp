<g:hiddenField name="floorLevel" value="${floor.level}" />
<g:hiddenField name="monsterId" value="${monster.id}" />
<p>
	<g:message code="rpg.page.label.Floor.Colon"/>: ${ floor.level }
</p>
<div class="portfolio-image">
	<table border="10" height="250">
		<div class="row" >
		<p>Monster name: ${ monster.name }</p>
		</div>
		<div class="row" >
		<p>Level: ${ monster.level }</p>
		</div>
		<div class="row" >
		<p>Attack: ${ monster.attack }</p>
		</div>
		<div class="row" >
		<p>HP: ${ monster.hp }</p>
		</div>
		<div class="row" >
		<p>MP: ${ monster.mp }</p>
		</div>
	</table>
</div>
