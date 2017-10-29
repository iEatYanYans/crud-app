<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>


<div id="personList-content" class="container table-responsive"">
	<h2> Contacts</h2>

		<a href="${pageContext.request.contextPath}/person/create"><button class="btn btn-default" >New Contact</button></a>
<div>
	<c:choose>
		<c:when test="${fn:length(persons) gt 0}">
			<table class="table table-striped">
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
								href="${pageContext.request.contextPath}/person/delete/${person.personId}"><button class="glyphicon glyphicon-trash btn btn-default btn-md" aria-label="true"></button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p style="font-size:24px; color:red; text-align:center; position:relative; bottom:0px;">No contacts found.</p>
		</c:otherwise>
	</c:choose>
</div>
