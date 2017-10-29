<%-- 
    Document   : deleteClient
    Created on : Oct 28, 2017 
    Author     : YChen
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/jsp/template.jsp">
	<jsp:param name="content" value="client/content/delete-content"/>
	<jsp:param name="title" value="Delete Client"/>
</jsp:include>