<%@ page import="unicar.unirn.br.Veiculo" %>



<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="veiculo.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modelo" name="modelo.id" from="${unicar.unirn.br.Modelos.list()}" optionKey="id" required="" value="${veiculoInstance?.modelo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'combustivel', 'error')} required">
	<label for="combustivel">
		<g:message code="veiculo.combustivel.label" default="Combustivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="combustivel" name="combustivel.id" from="${unicar.unirn.br.Combustivel.list()}" optionKey="id" required="" value="${veiculoInstance?.combustivel?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'cor', 'error')} required">
	<label for="cor">
		<g:message code="veiculo.cor.label" default="Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cor" name="cor.id" from="${unicar.unirn.br.Cor.list()}" optionKey="id" required="" value="${veiculoInstance?.cor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'proprietario', 'error')} required">
	<label for="proprietario">
		<g:message code="veiculo.proprietario.label" default="Proprietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proprietario" name="proprietario.id" from="${unicar.unirn.br.Proprietario.list()}" optionKey="id" required="" value="${veiculoInstance?.proprietario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="veiculo.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: veiculoInstance, field: 'valor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="veiculo.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ano" type="number" value="${veiculoInstance.ano}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'acessorioses1', 'error')} ">
	<label for="acessorioses1">
		<g:message code="veiculo.acessorioses1.label" default="Acessorioses1" />
		
	</label>
	<g:select name="acessorioses1" from="${unicar.unirn.br.Acessorios.list()}" multiple="multiple" optionKey="id" size="5" value="${veiculoInstance?.acessorioses1*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: veiculoInstance, field: 'fotos', 'error')} ">
	<label for="fotos">
		<g:message code="veiculo.fotos.label" default="Fotos" />
		
	</label>
	<g:select name="fotos" from="${unicar.unirn.br.Fotos.list()}" multiple="multiple" optionKey="id" size="5" value="${veiculoInstance?.fotos*.id}" class="many-to-many"/>

</div>

