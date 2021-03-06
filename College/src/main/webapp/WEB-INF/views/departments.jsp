<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags/"%>

<h3 class="text-center">Departments</h3>
<br>

<c:if test="${empty departments}">
	<h4 class="text-danger text-center">There&nbsp;is&nbsp;no&nbsp;data&nbsp;for&nbsp;display!!!</h4>
</c:if>

<c:if test="${not empty departments}">
	<div class="table-responsive">
		<table class="table table-striped table-bordered">

			<tr class="success">
				<th>ID</th>
				<th>TITLE</th>
				<th>DATE&nbsp;OF&nbsp;CREATION</th>
				<th>MANAGE</th>
			</tr>

			<c:forEach items="${departments}" var="department">
				<tr>
					<td>${department.id}</td>
					<td>${department.title}</td>
					<td><tag:date date="${department.dateOfCreation}"></tag:date></td>

					<td><sec:authorize access="hasAnyRole('USER', 'ADMIN')">
							<a class="btn btn-primary"
								href="<c:url value='/departments/edit?departmentId=${department.id}'/>">
								<span class="glyphicon glyphicon-pencil"></span>&nbsp;Edit
							</a>
							<a class="btn btn-danger"
								href="<c:url value='/departments/delete?departmentId=${department.id}'/>">
								<span class="glyphicon glyphicon-remove"></span>&nbsp;Delete
							</a>
						</sec:authorize> <a class="btn btn-default"
						href="<c:url value='/studyPrograms?departmentId=${department.id}'/>">Study&nbsp;Programs</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</c:if>

