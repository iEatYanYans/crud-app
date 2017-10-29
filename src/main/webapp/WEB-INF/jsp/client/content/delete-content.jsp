<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<body>
	<p>Are you sure you want to delete the client
		${client.companyName}?</p>
	<form action="${pageContext.request.contextPath}/client/delete"
		method="post">
		<input type="hidden" name="clientId" value="${client.clientId}" /> <input
			type="submit" name="command" value="Cancel" /> <input type="submit"
			name="command" value="Delete" />
	</form>
</body>