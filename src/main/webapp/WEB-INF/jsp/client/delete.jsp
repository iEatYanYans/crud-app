<%-- 
    Document   : deleteClient
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
<title>Delete Client</title>
</head>
<body>
        <h1>Delete Client</h1>
        <p>Are you sure you want to delete the client ${client.companyName}?</p>
        <form action="${pageContext.request.contextPath}/client/delete" method="post">
            <input type="hidden" name="clientId" value="${client.clientId}"/>
            <input type="submit" name="command" value="Cancel"/>
            <input type="submit" name="command" value="Delete"/>
        </form>
    </body>
</html>