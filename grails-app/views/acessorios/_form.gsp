<%@ page import="unicar.unirn.br.Acessorios" %>



<div class="form-group ${hasErrors(bean: acessoriosInstance, field: 'descAcessorio', 'has-error')} required">
	<label for="descAcessorio">
		<g:message code="acessorios.descAcessorio.label" default="Desc Acessorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descAcessorio" required="" value="${acessoriosInstance?.descAcessorio}"/>

</div>

