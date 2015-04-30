
<%@ page import="unicar.unirn.br.Modelos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelos.label', default: 'Modelos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-modelos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-modelos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list modelos">
			
				<g:if test="${modelosInstance?.descModelo}">
				<li class="fieldcontain">
					<span id="descModelo-label" class="property-label"><g:message code="modelos.descModelo.label" default="Desc Modelo" /></span>
					
						<span class="property-value" aria-labelledby="descModelo-label"><g:fieldValue bean="${modelosInstance}" field="descModelo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelosInstance?.tiposveiculo}">
				<li class="fieldcontain">
					<span id="tiposveiculo-label" class="property-label"><g:message code="modelos.tiposveiculo.label" default="Tiposveiculo" /></span>
					
						<span class="property-value" aria-labelledby="tiposveiculo-label"><g:link controller="tiposVeiculo" action="show" id="${modelosInstance?.tiposveiculo?.id}">${modelosInstance?.tiposveiculo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${modelosInstance?.montadora}">
				<li class="fieldcontain">
					<span id="montadora-label" class="property-label"><g:message code="modelos.montadora.label" default="Montadora" /></span>
					
						<span class="property-value" aria-labelledby="montadora-label"><g:link controller="montadora" action="show" id="${modelosInstance?.montadora?.id}">${modelosInstance?.montadora?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:modelosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${modelosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
