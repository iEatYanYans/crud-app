<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<div class="container">
<div> <h3>${person.firstName} ${person.lastName}'s Profile</h3></div>
	<c:if test="${fn:length(errors) gt 0}">
		<p>Please correct the following errors in your submission:</p>
		<ul>
			<c:forEach items="${errors}" var="error">
				<li>${error}</li>
			</c:forEach>
		</ul>
	</c:if>
	<form class="editForm" action="${pageContext.request.contextPath}/person/edit/${person.personId}"
		method="POST">
		<br /> 
		<label for="firstName">First Name:</label> 
		<input type="text"
			name="firstName" value="${person.firstName}" /> 
			<br /> 
			<label
			for="lastName">Last Name:</label> 
			<input type="text" name="lastName"
			value="${person.lastName}" /> 
			<br /> 
			<label for="emailAddress">Email
			Address:</label> 
			<input type="text" name="emailAddress"
			value="${person.emailAddress}" /> 
			<br /> <label for="streetAddress">Street
			Address:</label> 
			<input type="text" name="streetAddress"
			value="${person.streetAddress}" /> 
			<br /> 
			<label for="city">City:</label>
		<input type="text" name="city" value="${person.city}" /> 
		<br /> 
		<label
			for="state">State:</label> 
			<input type="text" name="state"
			value="${person.state}" /> 
			<br /> <label for="zipCode">Zip
			Code:</label> 
			<input type="text" name="zipCode" value="${person.zipCode}" /> 
			<br />
		<label for="clientId">Company:</label> 
		<select name="clientId">
			<option value="${client.clientId}" selected disabled hidden>${client.companyName}</option> 
			<c:if test="${fn:length(clients) gt 0}">
				<c:forEach items="${clients}" var="client">
					<option value="${client.clientId}">${client.companyName}</option>
				</c:forEach>
			</c:if>
		</select>
			<br />
			<button type="submit" name="Submit" value="Save">Update</button>
			<button type="button" id="editButton" value="enableInputForms">Edit</button> 
			<br>
	</form>
</div>
