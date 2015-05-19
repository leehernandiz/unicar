
<%@ page import="unicar.unirn.br.Modelos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelos.label', default: 'Modelos')}" />
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
									
										<g:sortableColumn property="descModelo" title="${message(code: 'modelos.descModelo.label', default: 'Desc Modelo')}" />
									
										<th><g:message code="modelos.tiposveiculo.label" default="Tiposveiculo" /></th>
									
										<th><g:message code="modelos.montadora.label" default="Montadora" /></th>
									
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>
								<g:each in="${modelosInstanceList}" status="i" var="modelosInstance">
									<tr>
									
										<td><g:link action="show" resource="${modelosInstance}">${fieldValue(bean: modelosInstance, field: "descModelo")}</g:link></td>
									
										<td>${fieldValue(bean: modelosInstance, field: "tiposveiculo")}</td>
									
										<td>${fieldValue(bean: modelosInstance, field: "montadora")}</td>
									
										<td>
											<g:link class="btn btn-default" action="edit" resource="${modelosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
										</td>
										<td>
											<g:form url="[resource:modelosInstance, action:'delete']" method="DELETE">
												<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
											</g:form>
										</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							<g:paginate total="${modelosInstanceCount ?: 0}" />
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
