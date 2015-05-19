
<%@ page import="br.com.seguranca.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
	
	
		<div class="row">
          <div class="col-lg-12">
              <h1 class="page-header"><g:message code="default.show.label" args="[entityName]" /></h1>
          </div>
          <!-- /.col-lg-12 -->
		</div>
		<div class="row">
			<ol class="breadcrumb">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li class="active"><g:message code="default.show.label" args="[entityName]" /></li>
			</ol>
			<g:if test="${flash.message}">
				<div class="alert alert-warning alert-dismissible" role="alert">
				  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				  ${flash.message}
				</div>
			</g:if>
			<div class="col-lg-12">
		        <div class="panel panel-primary">
		            <div class="panel-heading">
	                	<i class="fa fa-clock-o fa-fw"></i><g:message code="default.show.label" args="[entityName]" />
		            </div>
		            <div class="panel-body">
			            
							
								<g:if test="${usuarioInstance?.username}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.username.label" default="Username" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${usuarioInstance}" field="username"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${usuarioInstance?.password}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.password.label" default="Password" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${usuarioInstance}" field="password"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${usuarioInstance?.accountExpired}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.accountExpired.label" default="Account Expired" />
										</div>
										<div class="panel-body">
											
												<g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${usuarioInstance?.accountLocked}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.accountLocked.label" default="Account Locked" />
										</div>
										<div class="panel-body">
											
												<g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${usuarioInstance?.enabled}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.enabled.label" default="Enabled" />
										</div>
										<div class="panel-body">
											
												<g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${usuarioInstance?.passwordExpired}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="usuario.passwordExpired.label" default="Password Expired" />
										</div>
										<div class="panel-body">
											
												<g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
											
										</div>
									</div>
								</g:if>
							
						
		            	<g:link class="btn btn-warning" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		            	<g:link class="btn btn-default" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
							<g:actionSubmit class="btn btn-danger pull-right" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</g:form>
		            </div>
	            </div>
            </div>
		</div>
	</body>
