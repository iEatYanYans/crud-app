<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<body>
	<c:if test="${fn:length(errors) gt 0}">
		<p>Please correct the following errors in your submission:</p>
		<ul>
			<c:forEach items="${errors}" var="error">
				<li>${error}</li>
			</c:forEach>
		</ul>
	</c:if>
	<form class="clientForm" action="${pageContext.request.contextPath}/client/create"
		method="POST">
		<br />
		<label for="companyName">Company Name:</label> 
		<input type="text" name="companyName" value="${client.companyName}" /> 
		<br />
		<label for="url">Website:</label> 
		<input type="text" name="url" value="${client.url}" /> 
		<br /> 
		<label for="phoneNumber">Phone Number:</label> 
		<input type="text" name="phoneNumber" value="${client.phoneNumber}"/> 
		<br /> 
		<label for="streetAddress">Street Address:</label> 
		<input type="text" name="streetAddress" value="${client.streetAddress}" /> 
		<br /> 
		<label for="city">City:</label>
		<input type="text" name="city" value="${client.city}" /> 
		<br /> 
		<label for="state">State:</label> 
		<input type="text" name="state" value="${client.state}" /> 
		<br /> 
		<label for="zipCode">Zip Code:</label> 
		<input type="text" name="zipCode" value="${client.zipCode}" />
		<br /> 
		<input type="submit" name="Submit" value="Submit" />
	</form>
</body>