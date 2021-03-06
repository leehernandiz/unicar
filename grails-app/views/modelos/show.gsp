
<%@ page import="unicar.unirn.br.Modelos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelos.label', default: 'Modelos')}" />
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
			            
							
								<g:if test="${modelosInstance?.descModelo}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="modelos.descModelo.label" default="Desc Modelo" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${modelosInstance}" field="descModelo"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${modelosInstance?.tiposveiculo}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="modelos.tiposveiculo.label" default="Tiposveiculo" />
										</div>
										<div class="panel-body">
											
												<g:link controller="tiposVeiculo" action="show" id="${modelosInstance?.tiposveiculo?.id}">${modelosInstance?.tiposveiculo?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${modelosInstance?.montadora}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="modelos.montadora.label" default="Montadora" />
										</div>
										<div class="panel-body">
											
												<g:link controller="montadora" action="show" id="${modelosInstance?.montadora?.id}">${modelosInstance?.montadora?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
						
		            	<g:link class="btn btn-warning" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		            	<g:link class="btn btn-default" action="edit" resource="${modelosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:form url="[resource:modelosInstance, action:'delete']" method="DELETE">
							<g:actionSubmit class="btn btn-danger pull-right" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</g:form>
		            </div>
	            </div>
            </div>
		</div>
	</body>
