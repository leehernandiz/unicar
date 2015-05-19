<%@ page import="unicar.unirn.br.Combustivel" %>



<div class="form-group ${hasErrors(bean: combustivelInstance, field: 'descCombustivel', 'has-error')} required">
	<label for="descCombustivel">
		<g:message code="combustivel.descCombustivel.label" default="Desc Combustivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descCombustivel" required="" value="${combustivelInstance?.descCombustivel}"/>

</div>

