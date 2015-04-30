<%@ page import="unicar.unirn.br.Cor" %>



<div class="fieldcontain ${hasErrors(bean: corInstance, field: 'descCor', 'error')} required">
	<label for="descCor">
		<g:message code="cor.descCor.label" default="Desc Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descCor" required="" value="${corInstance?.descCor}"/>

</div>

