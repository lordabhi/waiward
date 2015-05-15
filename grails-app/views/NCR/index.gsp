

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'NCR.label', default: 'NCR')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-NCR" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-NCR" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="recordType" title="${message(code: 'NCR.hseqCaseFile.caseNo.label', default: 'Case Number')}" />

						<g:sortableColumn property="recordType" title="${message(code: 'NCR.recordType.label', default: 'Record Type')}" />

						<g:sortableColumn property="state" title="${message(code: 'NCR.state.label', default: 'State')}" />
					
						<g:sortableColumn property="source" title="${message(code: 'NCR.source.label', default: 'Source')}" />
					
						<g:sortableColumn property="discrepancyType" title="${message(code: 'NCR.discrepancyType.label', default: 'Discrepancy Type')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'NCR.status.label', default: 'Status')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${NCRInstanceList}" status="i" var="NCRInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>${fieldValue(bean: NCRInstance, field: "hseqCaseFile.caseNo")}</td>

						<td><g:link action="show" id="${NCRInstance.id}">${fieldValue(bean: NCRInstance, field: "recordType")}</g:link></td>

						<td>${fieldValue(bean: NCRInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: NCRInstance, field: "source")}</td>
					
						<td>${fieldValue(bean: NCRInstance, field: "discrepancyType")}</td>
					
						<td>${fieldValue(bean: NCRInstance, field: "status")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${NCRInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
