

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hseqCaseFile.label', default: 'HseqCaseFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hseqCaseFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hseqCaseFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hseqCaseFile">
			
				<g:if test="${hseqCaseFileInstance?.caseNo}">
				<li class="fieldcontain">
					<span id="caseNo-label" class="property-label"><g:message code="hseqCaseFile.caseNo.label" default="Case No" /></span>
					
						<span class="property-value" aria-labelledby="caseNo-label"><g:fieldValue bean="${hseqCaseFileInstance}" field="caseNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hseqCaseFileInstance?.hseqRecord}">
				<li class="fieldcontain">
					<span id="hseqRecord-label" class="property-label"><g:message code="hseqCaseFile.hseqRecord.label" default="Hseq Record" /></span>
					
						<span class="property-value" aria-labelledby="hseqRecord-label"><g:link controller="NCR" action="show" id="${hseqCaseFileInstance?.hseqRecord?.id}">${hseqCaseFileInstance?.hseqRecord?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:hseqCaseFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${hseqCaseFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
