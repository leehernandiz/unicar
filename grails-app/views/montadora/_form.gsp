<%@ page import="unicar.unirn.br.Montadora" %>



<div class="form-group ${hasErrors(bean: montadoraInstance, field: 'descMontadora', 'has-error')} required">
	<label for="descMontadora">
		<g:message code="montadora.descMontadora.label" default="Desc Montadora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descMontadora" required="" value="${montadoraInstance?.descMontadora}"/>

</div>

