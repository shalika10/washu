
<%@ page import="com.washu.dashboard.Testing2" %>
<!doctype html>
<html>
<head>
	<meta name="layout" content="dashboard">
	<g:set var="entityName" value="${message(code: 'testing2.label', default: 'Testing2')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div class="row-fluid">

	<div class="span3">
		<div class="well">
			<ul class="nav nav-list">
				<li class="nav-header">${entityName}</li>
				<li>
					<g:link class="list" action="index">
						<i class="icon-list"></i>
						<g:message code="default.list.label" args="[entityName]" />
					</g:link>
				</li>
				<li>
					<g:link class="create" action="create">
						<i class="icon-plus"></i>
						<g:message code="default.create.label" args="[entityName]" />
					</g:link>
				</li>
			</ul>
		</div>
	</div>

	<div class="span9">

		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>

		<g:if test="${flash.message}">
			<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
		</g:if>

		<dl>
			
			<g:if test="${testing2Instance?.age}">
				<dt><g:message code="testing2.age.label" default="Age" /></dt>
				
				<dd><g:fieldValue bean="${testing2Instance}" field="age"/></dd>
				
			</g:if>
			
			<g:if test="${testing2Instance?.name}">
				<dt><g:message code="testing2.name.label" default="Name" /></dt>
				
				<dd><g:fieldValue bean="${testing2Instance}" field="name"/></dd>
				
			</g:if>
			
		</dl>

		<g:form>
			<g:hiddenField name="id" value="${testing2Instance?.id}" />
			<div class="form-actions">
				<g:link class="btn" action="edit" id="${testing2Instance?.id}">
					<i class="icon-pencil"></i>
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<button class="btn btn-danger" type="submit" name="_action_delete"  onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
					<i class="icon-trash icon-white"></i>
					<g:message code="default.button.delete.label" default="Delete" />
				</button>
			</div>
		</g:form>

	</div>

</div>
</body>
</html>
