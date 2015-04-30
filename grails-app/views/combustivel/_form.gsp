<%@ page import="unicar.unirn.br.Combustivel" %>



<div class="fieldcontain ${hasErrors(bean: combustivelInstance, field: 'descCombustivel', 'error')} required">
	<label for="descCombustivel">
		<g:message code="combustivel.descCombustivel.label" default="Desc Combustivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descCombustivel" required="" value="${combustivelInstance?.descCombustivel}"/>

</div>

