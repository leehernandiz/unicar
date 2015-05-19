
<%@ page import="br.com.seguranca.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
          <div class="col-lg-12">
              <h1 class="page-header"><g:message code="default.list.label" args="[entityName]" /></h1>
          </div>
          <!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<g:if test="${flash.message}">
				<div class="alert alert-warning alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				  ${flash.message}
				</div>
			</g:if>
			<div class="col-lg-12">
		        <div class="panel panel-primary">
		            <div class="panel-heading">
	                	<i class="fa fa-clock-o fa-fw"></i><g:message code="default.list.label" args="[entityName]" />
	                	<div class="pull-right">
	                        <g:link class="btn btn-default btn-xs" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                    	</div>
		            </div>
		            
		            <div class="panel-body">
		            	<table class="table table-striped">
							<thead>
									<tr>
									
										<g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />
									
										<g:sortableColumn property="password" title="${message(code: 'usuario.password.label', default: 'Password')}" />
									
										<g:sortableColumn property="accountExpired" title="${message(code: 'usuario.accountExpired.label', default: 'Account Expired')}" />
									
										<g:sortableColumn property="accountLocked" title="${message(code: 'usuario.accountLocked.label', default: 'Account Locked')}" />
									
										<g:sortableColumn property="enabled" title="${message(code: 'usuario.enabled.label', default: 'Enabled')}" />
									
										<g:sortableColumn property="passwordExpired" title="${message(code: 'usuario.passwordExpired.label', default: 'Password Expired')}" />
									
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>
								<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
									<tr>
									
										<td><g:link action="show" resource="${usuarioInstance}">${fieldValue(bean: usuarioInstance, field: "username")}</g:link></td>
									
										<td>${fieldValue(bean: usuarioInstance, field: "password")}</td>
									
										<td><g:formatBoolean boolean="${usuarioInstance.accountExpired}" /></td>
									
										<td><g:formatBoolean boolean="${usuarioInstance.accountLocked}" /></td>
									
										<td><g:formatBoolean boolean="${usuarioInstance.enabled}" /></td>
									
										<td><g:formatBoolean boolean="${usuarioInstance.passwordExpired}" /></td>
									
										<td>
											<g:link class="btn btn-default" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
										</td>
										<td>
											<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
												<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
											</g:form>
										</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							<g:paginate total="${usuarioInstanceCount ?: 0}" />
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
