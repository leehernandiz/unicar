
<%@ page import="unicar.unirn.br.Proprietario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proprietario.label', default: 'Proprietario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-proprietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-proprietario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descProprietario" title="${message(code: 'proprietario.descProprietario.label', default: 'Desc Proprietario')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'proprietario.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'proprietario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="telefones" title="${message(code: 'proprietario.telefones.label', default: 'Telefones')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'proprietario.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'proprietario.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${proprietarioInstanceList}" status="i" var="proprietarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${proprietarioInstance.id}">${fieldValue(bean: proprietarioInstance, field: "descProprietario")}</g:link></td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "telefones")}</td>
					
						<td><g:formatDate date="${proprietarioInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${proprietarioInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${proprietarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
