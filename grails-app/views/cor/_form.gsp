<%@ page import="unicar.unirn.br.Cor" %>



<div class="form-group ${hasErrors(bean: corInstance, field: 'descCor', 'has-error')} required">
	<label for="descCor">
		<g:message code="cor.descCor.label" default="Desc Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descCor" required="" value="${corInstance?.descCor}"/>

</div>

