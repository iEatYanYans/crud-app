<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
       
<div id="clientList-content" class="container table-responsive"">
	<h3> Clients</h3>
	<img id="clientListImg" src="https://i.imgur.com/v2lgoj7.png" height="250" alt="Client Image">
  <button id="createClientbtn" class="btn btn-default" ><a href="${pageContext.request.contextPath}/client/create">Create New Client</a></button>
  <p>
  <c:choose>
      <c:when test="${fn:length(clients) gt 0}">
          <table class="table table-striped">
              <thead>
                  <tr>
                      <th>Client ID </th>
                      <th>Company Name</th>
                      <th>Website </th>
                      <th>Phone Number</th>
                      <th>Delete</th>
                  </tr>
              </thead>
              <tbody>
                  <c:forEach items="${clients}" var="client">
                      <tr>
                          <td>${client.clientId}</td>
                          <td><a href="${pageContext.request.contextPath}/client/edit/${client.clientId}"> ${client.companyName} </a></td>
                          <td>${client.url}</td>
                          <td>${client.phoneNumber}</td>
                          <td>
                              <a href="${pageContext.request.contextPath}/client/delete/${client.clientId}"><button class="glyphicon glyphicon-trash btn btn-default btn-md" aria-label="true"></button></a>
                          </td>
                      </tr>
                  </c:forEach>
              </tbody>
          </table>
      </c:when>
      <c:otherwise>
          <p style="font-size:24px; color:red; text-align:center; position:relative; bottom:0px;">No clients found.</p>
      </c:otherwise>
  </c:choose>
  </p>
</div>