<%@ page import="unicar.unirn.br.Proprietario" %>



<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'descProprietario', 'error')} required">
	<label for="descProprietario">
		<g:message code="proprietario.descProprietario.label" default="Desc Proprietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descProprietario" required="" value="${proprietarioInstance?.descProprietario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="proprietario.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${proprietarioInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="proprietario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${proprietarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="proprietario.telefones.label" default="Telefones" />
		
	</label>
	<g:textField name="telefones" value="${proprietarioInstance?.telefones}"/>

</div>

