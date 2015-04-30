<%@ page import="unicar.unirn.br.Acessorios" %>



<div class="fieldcontain ${hasErrors(bean: acessoriosInstance, field: 'descAcessorio', 'error')} required">
	<label for="descAcessorio">
		<g:message code="acessorios.descAcessorio.label" default="Desc Acessorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descAcessorio" required="" value="${acessoriosInstance?.descAcessorio}"/>

</div>

