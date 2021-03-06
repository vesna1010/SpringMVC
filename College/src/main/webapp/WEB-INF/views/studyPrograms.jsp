<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/"%>

<h3 class="text-center">Study&nbsp;Programs</h3>
<br>

<c:if test="${empty studyPrograms}">
	<h4 class="text-danger text-center">There&nbsp;is&nbsp;no&nbsp;data&nbsp;for&nbsp;display!!!</h4>
</c:if>

<c:if test="${not empty studyPrograms}">
	<div class="table-responsive">
		<table class="table table-striped table-bordered">

			<tr class="success">
				<th>ID</th>
				<th>TITLE</th>
				<th>DATE&nbsp;OF&nbsp;CREATION</th>
				<th>DURATION&nbsp;OF&nbsp;STUDY</th>
				<th>ECTS</th>
				<th>DEPARTMENT</th>
				<th>MANAGE</th>
			</tr>

			<c:forEach items="${studyPrograms}" var="studyProgram">
				<tr>
					<td>${studyProgram.id}</td>
					<td>${studyProgram.title}</td>
					<td><tag:date date="${studyProgram.dateOfCreation}"></tag:date></td>
					<td>${studyProgram.durationOfStudy}</td>
					<td>${studyProgram.ects}</td>
					<td>${studyProgram.department.title}</td>

					<td><sec:authorize access="hasAnyRole('USER', 'ADMIN')">
							<a class="btn btn-primary"
								href="<c:url value='/studyPrograms/edit?studyProgramId=${studyProgram.id}' />"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;Edit</a>
							<a class="btn btn-danger"
								href="<c:url value='/studyPrograms/delete?studyProgramId=${studyProgram.id}' />"><span
								class="glyphicon glyphicon-remove"></span>&nbsp;Delete</a>
							<a class="btn btn-default"
								href="<c:url value='/exams/form?studyProgramId=${studyProgram.id}' />">&nbsp;Add&nbsp;Exam</a>
						</sec:authorize> <a class="btn btn-default"
						href="<c:url value='/students?studyProgramId=${studyProgram.id}'/>">&nbsp;Students</a>
						<a class="btn btn-default"
						href="<c:url value='/subjects?studyProgramId=${studyProgram.id}'/>">&nbsp;Subjects</a>
						<a class="btn btn-default"
						href="<c:url value='/professors?studyProgramId=${studyProgram.id}'/>">&nbsp;Professors</a>
						<a class="btn btn-default"
						href="<c:url value='/exams?studyProgramId=${studyProgram.id}'/>">&nbsp;Exams</a>
						<a class="btn btn-default"
						href="<c:url value='/lectures?studyProgramId=${studyProgram.id}'/>">&nbsp;Lectures</a>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</c:if>
