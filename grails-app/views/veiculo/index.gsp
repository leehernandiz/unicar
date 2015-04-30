
<%@ page import="unicar.unirn.br.Veiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'veiculo.label', default: 'Veiculo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-veiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-veiculo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="veiculo.modelo.label" default="Modelo" /></th>
					
						<th><g:message code="veiculo.combustivel.label" default="Combustivel" /></th>
					
						<th><g:message code="veiculo.cor.label" default="Cor" /></th>
					
						<th><g:message code="veiculo.proprietario.label" default="Proprietario" /></th>
					
						<g:sortableColumn property="valor" title="${message(code: 'veiculo.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="ano" title="${message(code: 'veiculo.ano.label', default: 'Ano')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${veiculoInstanceList}" status="i" var="veiculoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${veiculoInstance.id}">${fieldValue(bean: veiculoInstance, field: "modelo")}</g:link></td>
					
						<td>${fieldValue(bean: veiculoInstance, field: "combustivel")}</td>
					
						<td>${fieldValue(bean: veiculoInstance, field: "cor")}</td>
					
						<td>${fieldValue(bean: veiculoInstance, field: "proprietario")}</td>
					
						<td>${fieldValue(bean: veiculoInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: veiculoInstance, field: "ano")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${veiculoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
