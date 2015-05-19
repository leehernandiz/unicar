<%@ page import="unicar.unirn.br.Modelos" %>



<div class="form-group ${hasErrors(bean: modelosInstance, field: 'descModelo', 'has-error')} required">
	<label for="descModelo">
		<g:message code="modelos.descModelo.label" default="Desc Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descModelo" required="" value="${modelosInstance?.descModelo}"/>

</div>

<div class="form-group ${hasErrors(bean: modelosInstance, field: 'tiposveiculo', 'has-error')} required">
	<label for="tiposveiculo">
		<g:message code="modelos.tiposveiculo.label" default="Tiposveiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tiposveiculo" name="tiposveiculo.id" from="${unicar.unirn.br.TiposVeiculo.list()}" optionKey="id" required="" value="${modelosInstance?.tiposveiculo?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: modelosInstance, field: 'montadora', 'has-error')} required">
	<label for="montadora">
		<g:message code="modelos.montadora.label" default="Montadora" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="montadora" name="montadora.id" from="${unicar.unirn.br.Montadora.list()}" optionKey="id" required="" value="${modelosInstance?.montadora?.id}" class="form-control"/>

</div>

