<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<body>
	<p>
		<a href="${pageContext.request.contextPath}/person/create">Create
			New Person</a>
	</p>
	<c:choose>
		<c:when test="${fn:length(persons) gt 0}">
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Address</th>
						<th>Client id</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${persons}" var="person">
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/person/edit/${person.personId}">${person.firstName}
							</a></td>
							<td><a
								href="${pageContext.request.contextPath}/person/edit/${person.personId}">${person.lastName}</a></td>
							<td>${person.emailAddress}</td>
							<td>${person.clientId}</td>
							<td><a
								href="${pageContext.request.contextPath}/person/delete/${person.personId}">Delete
									Person</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p>No results found.</p>
		</c:otherwise>
	</c:choose>
</body>
