<%@ page import="unicar.unirn.br.Veiculo" %>



<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'modelo', 'has-error')} required">
	<label for="modelo">
		<g:message code="veiculo.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modelo" name="modelo.id" from="${unicar.unirn.br.Modelos.list()}" optionKey="id" required="" value="${veiculoInstance?.modelo?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'combustivel', 'has-error')} required">
	<label for="combustivel">
		<g:message code="veiculo.combustivel.label" default="Combustivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="combustivel" name="combustivel.id" from="${unicar.unirn.br.Combustivel.list()}" optionKey="id" required="" value="${veiculoInstance?.combustivel?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'cor', 'has-error')} required">
	<label for="cor">
		<g:message code="veiculo.cor.label" default="Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cor" name="cor.id" from="${unicar.unirn.br.Cor.list()}" optionKey="id" required="" value="${veiculoInstance?.cor?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'proprietario', 'has-error')} required">
	<label for="proprietario">
		<g:message code="veiculo.proprietario.label" default="Proprietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proprietario" name="proprietario.id" from="${unicar.unirn.br.Proprietario.list()}" optionKey="id" required="" value="${veiculoInstance?.proprietario?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'valor', 'has-error')} required">
	<label for="valor">
		<g:message code="veiculo.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: veiculoInstance, field: 'valor')}" required=""/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'ano', 'has-error')} required">
	<label for="ano">
		<g:message code="veiculo.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="ano" required="" value="${veiculoInstance?.ano}"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'comentario', 'has-error')} ">
	<label for="comentario">
		<g:message code="veiculo.comentario.label" default="Comentario" />
		
	</label>
	<g:textField class="form-control" name="comentario" value="${veiculoInstance?.comentario}"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'acessorios', 'has-error')} ">
	<label for="acessorios">
		<g:message code="veiculo.acessorios.label" default="Acessorios" />
		
	</label>
	<g:select name="acessorios" from="${unicar.unirn.br.Acessorios.list()}" multiple="multiple" optionKey="id" size="5" value="${veiculoInstance?.acessorios*.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: veiculoInstance, field: 'arquivo', 'has-error')} ">
	<label for="arquivo">
		<g:message code="veiculo.arquivo.label" default="Arquivo" />
		
	</label>
	<g:select name="arquivo" from="${unicar.unirn.br.Arquivo.list()}" multiple="multiple" optionKey="id" size="5" value="${veiculoInstance?.arquivo*.id}" class="form-control"/>

</div>

