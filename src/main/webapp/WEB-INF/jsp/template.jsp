<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
       <jsp:include page="/WEB-INF/jsp/template/header.jsp"/>
       <!--- Custom CSS -->
       <%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/template.css"> --%>
		<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>css/template.css"> --%>
    </head>
    <body>
    <div id="wrapper" class="main">
	<jsp:include page="/WEB-INF/jsp/template/sidebar.jsp"/>

	
	<h1>${param.title}</h1>

	<jsp:include page="/WEB-INF/jsp/${param.content}.jsp"/>
	
	
	<jsp:include page="/WEB-INF/jsp/template/footer.jsp"/>
	</div>
</body>
</html>