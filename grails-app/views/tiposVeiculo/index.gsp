
<%@ page import="unicar.unirn.br.TiposVeiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tiposVeiculo.label', default: 'TiposVeiculo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tiposVeiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tiposVeiculo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descTipoVeiculo" title="${message(code: 'tiposVeiculo.descTipoVeiculo.label', default: 'Desc Tipo Veiculo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tiposVeiculoInstanceList}" status="i" var="tiposVeiculoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tiposVeiculoInstance.id}">${fieldValue(bean: tiposVeiculoInstance, field: "descTipoVeiculo")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tiposVeiculoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
