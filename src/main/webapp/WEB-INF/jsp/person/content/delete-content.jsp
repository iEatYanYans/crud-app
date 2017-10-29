<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<div id="delete-content" class="container">
	<h3> Delete ${person.firstName} ${person.lastName} ?</h3>
	<p>You are about to delete the person ${person.firstName}
		${person.lastName}: Are you sure?</p>
	<form action="${pageContext.request.contextPath}/person/delete"
		method="post">
		<input type="hidden" name="personId" value="${person.personId}" /> <input
			type="submit" name="command" value="Cancel" /> <input type="submit"
			name="command" value="Delete" />
	</form>
</div>
