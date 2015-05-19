
<%@ page import="unicar.unirn.br.Veiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'veiculo.label', default: 'Veiculo')}" />
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
			            
							
								<g:if test="${veiculoInstance?.modelo}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.modelo.label" default="Modelo" />
										</div>
										<div class="panel-body">
											
												<g:link controller="modelos" action="show" id="${veiculoInstance?.modelo?.id}">${veiculoInstance?.modelo?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.combustivel}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.combustivel.label" default="Combustivel" />
										</div>
										<div class="panel-body">
											
												<g:link controller="combustivel" action="show" id="${veiculoInstance?.combustivel?.id}">${veiculoInstance?.combustivel?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.cor}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.cor.label" default="Cor" />
										</div>
										<div class="panel-body">
											
												<g:link controller="cor" action="show" id="${veiculoInstance?.cor?.id}">${veiculoInstance?.cor?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.proprietario}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.proprietario.label" default="Proprietario" />
										</div>
										<div class="panel-body">
											
												<g:link controller="proprietario" action="show" id="${veiculoInstance?.proprietario?.id}">${veiculoInstance?.proprietario?.encodeAsHTML()}</g:link></span>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.valor}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.valor.label" default="Valor" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${veiculoInstance}" field="valor"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.ano}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.ano.label" default="Ano" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${veiculoInstance}" field="ano"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.comentario}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.comentario.label" default="Comentario" />
										</div>
										<div class="panel-body">
											
												<g:fieldValue bean="${veiculoInstance}" field="comentario"/>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.acessorios}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.acessorios.label" default="Acessorios" />
										</div>
										<div class="panel-body">
											
												<g:each in="${veiculoInstance.acessorios}" var="a">
													<g:link controller="acessorios" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
												</g:each>
											
										</div>
									</div>
								</g:if>
							
								<g:if test="${veiculoInstance?.arquivo}">
									<div class="panel panel-default">
										<div class="panel-heading">
											<g:message code="veiculo.arquivo.label" default="Arquivo" />
										</div>
										<div class="panel-body">
											
												<g:each in="${veiculoInstance.arquivo}" var="a">
													<g:link controller="arquivo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
												</g:each>
											
										</div>
									</div>
								</g:if>
							
						
		            	<g:link class="btn btn-warning" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
		            	<g:link class="btn btn-default" action="edit" resource="${veiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:form url="[resource:veiculoInstance, action:'delete']" method="DELETE">
							<g:actionSubmit class="btn btn-danger pull-right" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</g:form>
		            </div>
	            </div>
            </div>
		</div>
	</body>
