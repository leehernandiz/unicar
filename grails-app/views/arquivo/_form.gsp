<%@ page import="unicar.unirn.br.Arquivo" %>



<div class="form-group ${hasErrors(bean: arquivoInstance, field: 'nome', 'has-error')} required">
	<label for="nome">
		<g:message code="arquivo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome" required="" value="${arquivoInstance?.nome}"/>

</div>

<div class="form-group ${hasErrors(bean: arquivoInstance, field: 'contentType', 'has-error')} required">
	<label for="contentType">
		<g:message code="arquivo.contentType.label" default="Content Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="contentType" required="" value="${arquivoInstance?.contentType}"/>

</div>

<div class="form-group ${hasErrors(bean: arquivoInstance, field: 'arquivo', 'has-error')} required">
	<label for="arquivo">
		<g:message code="arquivo.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" name="arquivo" />

</div>

