<%@ page import="br.com.seguranca.Usuario" %>



<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'username', 'has-error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="username" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'password', 'has-error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'has-error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'has-error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'enabled', 'has-error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'has-error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />

</div>

