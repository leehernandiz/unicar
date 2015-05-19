<%@ page import="unicar.unirn.br.Proprietario" %>



<div class="form-group ${hasErrors(bean: proprietarioInstance, field: 'descProprietario', 'has-error')} required">
	<label for="descProprietario">
		<g:message code="proprietario.descProprietario.label" default="Desc Proprietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descProprietario" required="" value="${proprietarioInstance?.descProprietario}"/>

</div>

<div class="form-group ${hasErrors(bean: proprietarioInstance, field: 'cidade', 'has-error')} required">
	<label for="cidade">
		<g:message code="proprietario.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="cidade" required="" value="${proprietarioInstance?.cidade}"/>

</div>

<div class="form-group ${hasErrors(bean: proprietarioInstance, field: 'email', 'has-error')} required">
	<label for="email">
		<g:message code="proprietario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" type="email" name="email" required="" value="${proprietarioInstance?.email}"/>

</div>

<div class="form-group ${hasErrors(bean: proprietarioInstance, field: 'telefones', 'has-error')} ">
	<label for="telefones">
		<g:message code="proprietario.telefones.label" default="Telefones" />
		
	</label>
	<g:textField class="form-control" name="telefones" value="${proprietarioInstance?.telefones}"/>

</div>

