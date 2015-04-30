<%@ page import="unicar.unirn.br.TiposVeiculo" %>



<div class="fieldcontain ${hasErrors(bean: tiposVeiculoInstance, field: 'descTipoVeiculo', 'error')} required">
	<label for="descTipoVeiculo">
		<g:message code="tiposVeiculo.descTipoVeiculo.label" default="Desc Tipo Veiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descTipoVeiculo" required="" value="${tiposVeiculoInstance?.descTipoVeiculo}"/>

</div>

