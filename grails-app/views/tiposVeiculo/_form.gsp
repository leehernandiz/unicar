<%@ page import="unicar.unirn.br.TiposVeiculo" %>



<div class="form-group ${hasErrors(bean: tiposVeiculoInstance, field: 'descTipoVeiculo', 'has-error')} required">
	<label for="descTipoVeiculo">
		<g:message code="tiposVeiculo.descTipoVeiculo.label" default="Desc Tipo Veiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descTipoVeiculo" required="" value="${tiposVeiculoInstance?.descTipoVeiculo}"/>

</div>

