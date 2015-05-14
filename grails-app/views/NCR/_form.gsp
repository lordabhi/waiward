



<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'recordType', 'error')} required">
	<label for="recordType">
		<g:message code="NCR.recordType.label" default="Record Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="recordType" required="" value="${NCRInstance?.recordType}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'enteredBy', 'error')} required">
	<label for="enteredBy">
		<g:message code="NCR.enteredBy.label" default="Entered By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enteredBy" required="" value="${NCRInstance?.enteredBy}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'reportedBy', 'error')} required">
	<label for="reportedBy">
		<g:message code="NCR.reportedBy.label" default="Reported By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reportedBy" required="" value="${NCRInstance?.reportedBy}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'qualityCoordinator', 'error')} required">
	<label for="qualityCoordinator">
		<g:message code="NCR.qualityCoordinator.label" default="Quality Coordinator" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="qualityCoordinator" required="" value="${NCRInstance?.qualityCoordinator}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="NCR.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${NCRInstance?.status}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="NCR.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${NCRInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="NCR.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${NCRInstance?.description}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'source', 'error')} required">
	<label for="source">
		<g:message code="NCR.source.label" default="Source" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="source" from="${NcrSource?.values()}" keys="${NcrSource.values()*.name()}" required="" value="${NCRInstance?.source?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'discrepancyType', 'error')} required">
	<label for="discrepancyType">
		<g:message code="NCR.discrepancyType.label" default="Discrepancy Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="discrepancyType" name="discrepancyType.id" from="${DiscrepancyType.list()}" optionKey="id" required="" value="${NCRInstance?.discrepancyType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NCRInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="NCR.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${NcrState?.values()}" keys="${NcrState.values()*.name()}" required="" value="${NCRInstance?.state?.name()}" />

</div>

