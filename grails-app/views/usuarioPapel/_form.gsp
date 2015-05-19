<%@ page import="br.com.seguranca.UsuarioPapel" %>



<div class="form-group ${hasErrors(bean: usuarioPapelInstance, field: 'papel', 'has-error')} required">
	<label for="papel">
		<g:message code="usuarioPapel.papel.label" default="Papel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="papel" name="papel.id" from="${br.com.seguranca.Papel.list()}" optionKey="id" required="" value="${usuarioPapelInstance?.papel?.id}" class="form-control"/>

</div>

<div class="form-group ${hasErrors(bean: usuarioPapelInstance, field: 'usuario', 'has-error')} required">
	<label for="usuario">
		<g:message code="usuarioPapel.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${br.com.seguranca.Usuario.list()}" optionKey="id" required="" value="${usuarioPapelInstance?.usuario?.id}" class="form-control"/>

</div>

