
<%@ page import="unicar.unirn.br.Veiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'veiculo.label', default: 'Veiculo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-veiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-veiculo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list veiculo">
			
				<g:if test="${veiculoInstance?.modelo}">
				<li class="fieldcontain">
					<span id="modelo-label" class="property-label"><g:message code="veiculo.modelo.label" default="Modelo" /></span>
					
						<span class="property-value" aria-labelledby="modelo-label"><g:link controller="modelos" action="show" id="${veiculoInstance?.modelo?.id}">${veiculoInstance?.modelo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.combustivel}">
				<li class="fieldcontain">
					<span id="combustivel-label" class="property-label"><g:message code="veiculo.combustivel.label" default="Combustivel" /></span>
					
						<span class="property-value" aria-labelledby="combustivel-label"><g:link controller="combustivel" action="show" id="${veiculoInstance?.combustivel?.id}">${veiculoInstance?.combustivel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.cor}">
				<li class="fieldcontain">
					<span id="cor-label" class="property-label"><g:message code="veiculo.cor.label" default="Cor" /></span>
					
						<span class="property-value" aria-labelledby="cor-label"><g:link controller="cor" action="show" id="${veiculoInstance?.cor?.id}">${veiculoInstance?.cor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.proprietario}">
				<li class="fieldcontain">
					<span id="proprietario-label" class="property-label"><g:message code="veiculo.proprietario.label" default="Proprietario" /></span>
					
						<span class="property-value" aria-labelledby="proprietario-label"><g:link controller="proprietario" action="show" id="${veiculoInstance?.proprietario?.id}">${veiculoInstance?.proprietario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="veiculo.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${veiculoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="veiculo.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:fieldValue bean="${veiculoInstance}" field="ano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.acessorioses1}">
				<li class="fieldcontain">
					<span id="acessorioses1-label" class="property-label"><g:message code="veiculo.acessorioses1.label" default="Acessorioses1" /></span>
					
						<g:each in="${veiculoInstance.acessorioses1}" var="a">
						<span class="property-value" aria-labelledby="acessorioses1-label"><g:link controller="acessorios" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${veiculoInstance?.fotos}">
				<li class="fieldcontain">
					<span id="fotos-label" class="property-label"><g:message code="veiculo.fotos.label" default="Fotos" /></span>
					
						<g:each in="${veiculoInstance.fotos}" var="f">
						<span class="property-value" aria-labelledby="fotos-label"><g:link controller="fotos" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:veiculoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${veiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
