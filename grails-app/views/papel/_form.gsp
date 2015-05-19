<%@ page import="br.com.seguranca.Papel" %>



<div class="form-group ${hasErrors(bean: papelInstance, field: 'authority', 'has-error')} required">
	<label for="authority">
		<g:message code="papel.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="authority" required="" value="${papelInstance?.authority}"/>

</div>

