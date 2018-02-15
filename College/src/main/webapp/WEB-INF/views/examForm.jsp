<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<h3 class="text-center">Save/Update Exam at ${studyProgram.title}</h3>
<br>

<sf:form
	action="${pageContext.request.contextPath}/exams/save?studyProgramId=${studyProgram.id}"
	method="post" modelAttribute="exam" class="form-horizontal">
	<tag:input_text_group name="id" title="ID"></tag:input_text_group>
	<tag:input_date_group name="date" title="DATE"></tag:input_date_group>
	<tag:input_select_group_set items="${studyProgram.subjects}"
		name="subject" itemLabel="title" itemValue="id" title="SUBJECT"></tag:input_select_group_set>
	<tag:input_select_group_set items="${studyProgram.professors}"
		name="professor" itemLabel="fullName" itemValue="id" title="PROFESSOR"></tag:input_select_group_set>
	<tag:input_select_group_set items="${studyProgram.students}"
		name="student" itemLabel="fullName" itemValue="id" title="STUDENT"></tag:input_select_group_set>
	<tag:input_text_group name="score" title="SCORE"></tag:input_text_group>
	<tag:button_group></tag:button_group>
</sf:form>

