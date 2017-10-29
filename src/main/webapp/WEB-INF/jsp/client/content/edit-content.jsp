
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
   <div>
    <div class="profile_pic class col-xs-6 col-sm-4 placeholder">
    	<img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
    </div>
 <div class= "class col-xs-6 col-sm-8">
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

   <c:choose>
       <c:when test="${fn:length(persons) gt 0}">
           <table>
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
                           <td>${person.firstName}</td>
                           <td>${person.lastName}</td>
                           <td>${person.emailAddress}</td>
                           <td>
                               <a href="${pageContext.request.contextPath}/person/edit/${person.personId}">Edit Person</a>
                               <a href="${pageContext.request.contextPath}/person/delete/${person.personId}">Delete Person</a>
                           </td>
                       </tr>
                   </c:forEach>
               </tbody>
           </table>
       </c:when>
       <c:otherwise>
           <p>No associated contacts found.</p>
       </c:otherwise>
   </c:choose>
 </div>
