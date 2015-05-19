
<%@ page import="unicar.unirn.br.Combustivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'combustivel.label', default: 'Combustivel')}" />
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
									
										<g:sortableColumn property="descCombustivel" title="${message(code: 'combustivel.descCombustivel.label', default: 'Desc Combustivel')}" />
									
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>
								<g:each in="${combustivelInstanceList}" status="i" var="combustivelInstance">
									<tr>
									
										<td><g:link action="show" resource="${combustivelInstance}">${fieldValue(bean: combustivelInstance, field: "descCombustivel")}</g:link></td>
									
										<td>
											<g:link class="btn btn-default" action="edit" resource="${combustivelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
										</td>
										<td>
											<g:form url="[resource:combustivelInstance, action:'delete']" method="DELETE">
												<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
											</g:form>
										</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							<g:paginate total="${combustivelInstanceCount ?: 0}" />
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
