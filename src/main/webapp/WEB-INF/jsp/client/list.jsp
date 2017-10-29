<%-- 
    Document   : listClient
    Created on : Oct 28, 2017 
    Author     : YChen
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Client Listing</title>
</head>
<body>
	<h1>Client Listing</h1>     
        <p><a href="${pageContext.request.contextPath}/client/create">Create New Client</a></p>
        <c:choose>
            <c:when test="${fn:length(clients) gt 0}">
                <table>
                    <thead>
                        <tr>
                            <th>Client ID </th>
                            <th>Company Name</th>
                            <th>Website </th>
                            <th>Phone Number</th>
                            <th>Actions</th>
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
                                    <a href="${pageContext.request.contextPath}/client/delete/${client.clientId}">Delete Client</a>
                                </td>
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
</html>