

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'NCR.label', default: 'NCR')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-NCR" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-NCR" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list NCR">
			
				<g:if test="${NCRInstance?.recordType}">
				<li class="fieldcontain">
					<span id="recordType-label" class="property-label"><g:message code="NCR.recordType.label" default="Record Type" /></span>
					
						<span class="property-value" aria-labelledby="recordType-label"><g:fieldValue bean="${NCRInstance}" field="recordType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.enteredBy}">
				<li class="fieldcontain">
					<span id="enteredBy-label" class="property-label"><g:message code="NCR.enteredBy.label" default="Entered By" /></span>
					
						<span class="property-value" aria-labelledby="enteredBy-label"><g:fieldValue bean="${NCRInstance}" field="enteredBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.reportedBy}">
				<li class="fieldcontain">
					<span id="reportedBy-label" class="property-label"><g:message code="NCR.reportedBy.label" default="Reported By" /></span>
					
						<span class="property-value" aria-labelledby="reportedBy-label"><g:fieldValue bean="${NCRInstance}" field="reportedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.qualityCoordinator}">
				<li class="fieldcontain">
					<span id="qualityCoordinator-label" class="property-label"><g:message code="NCR.qualityCoordinator.label" default="Quality Coordinator" /></span>
					
						<span class="property-value" aria-labelledby="qualityCoordinator-label"><g:fieldValue bean="${NCRInstance}" field="qualityCoordinator"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="NCR.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${NCRInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="NCR.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${NCRInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="NCR.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${NCRInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.hseqCaseFile}">
				<li class="fieldcontain">
					<span id="hseqCaseFile-label" class="property-label"><g:message code="NCR.hseqCaseFile.label" default="Hseq Case File" /></span>
					
						<span class="property-value" aria-labelledby="hseqCaseFile-label"><g:link controller="hseqCaseFile" action="show" id="${NCRInstance?.hseqCaseFile?.id}">${NCRInstance?.hseqCaseFile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="NCR.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${NCRInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.discrepancyType}">
				<li class="fieldcontain">
					<span id="discrepancyType-label" class="property-label"><g:message code="NCR.discrepancyType.label" default="Discrepancy Type" /></span>
					
						<span class="property-value" aria-labelledby="discrepancyType-label"><g:link controller="discrepancyType" action="show" id="${NCRInstance?.discrepancyType?.id}">${NCRInstance?.discrepancyType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${NCRInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="NCR.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${NCRInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:NCRInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${NCRInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
