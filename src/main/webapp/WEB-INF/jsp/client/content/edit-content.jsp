
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<div id="page-content-wrapper">
	<c:if test="${fn:length(errors) gt 0}">
       <p>Please correct the following errors in your submission:</p>
       <ul>
           <c:forEach items="${errors}" var="error">
               <li>${error}</li>
           </c:forEach>
       </ul>
   	</c:if>
   <div id="clientInfo">
	    <div class="profile_pic col-sm-4 placeholder">
	    	<img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="250" height="250" class="img-responsive" alt="Generic placeholder thumbnail">
	    </div>
	 	<div class="col-xs-4 col-sm-6" id="editClientForm">
	   <form action="${pageContext.request.contextPath}/client/edit" method="POST">
	       <input type="hidden" name="clientId" value="${client.clientId}"/>
	       <br/>
	       <h3>
	       <input type="text" name="companyName" value="${client.companyName}"/>
	       </h3>
	       <br/>
	       <label for="url">Website:</label>
	       <input type="text" name="url" value="${client.url}"/>
	       <br/>
	       <label for="phoneNumber">Phone Number:</label>
	       <input type="text" name="phoneNumber" value="${client.phoneNumber}"/>
	       <br/>
	       <label for="streetAddress">Street Address:</label>
	       <input type="text" name="streetAddress" value="${client.streetAddress}"/>
	       <br/>
	       <label for="city">City:</label>
	       <input type="text" name="city" value="${client.city}"/>
	       <br/>
	       <label for="state">State:</label>
	       <input type="text" name="state" value="${client.state}"/>
	       <br/>
	       <label for="zipCode">Zip Code:</label>
	       <input type="text" name="zipCode" value="${client.zipCode}"/>
	       <br/>
	       <button type="button" id="editClient">Edit</button>
	       <input type="submit" name="Submit" value="Save"/>
	   </form>
	    </div>
   </div>
<div class="table table-responsive">
<span><h2>Contacts</h2> <a href="${pageContext.request.contextPath}/person/create"><button>Add Contact</button></a></span>
   <c:choose>
       <c:when test="${fn:length(persons) gt 0}">
           <table class="table table-striped">
               <thead>
                   <tr>
                       <th>First Name</th>
                       <th>Last Name</th>
                       <th>Email Address</th>
                       <th>Actions</th>
                   </tr>
               </thead>
               <tbody>
                   <c:forEach items="${persons}" var="person">
                       <tr>
                           <td><a href="${pageContext.request.contextPath}/person/edit/${person.personId}">${person.firstName}</a></td>
                           <td><a href="${pageContext.request.contextPath}/person/edit/${person.personId}">${person.lastName}</a></td>
                           <td>${person.emailAddress}</td>
                           <td>
                               <a href="${pageContext.request.contextPath}/person/delete/${person.personId}"><button class="glyphicon glyphicon-trash btn btn-default btn-md" aria-label="true"></button></a>
                           </td>
                       </tr>
                   </c:forEach>
               </tbody>
           </table>
       </c:when>
       <c:otherwise>
       	<br>	
           <p style="font-size:24px; color:red; text-align:center; position:relative; bottom:0px;">No associated contacts found.</p>
       </c:otherwise>
   </c:choose>
  </div>
 </div>
