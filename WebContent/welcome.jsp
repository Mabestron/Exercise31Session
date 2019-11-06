<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>

<%-- Forma 1 de obtener el objeto session 
<%

 	String usuario=(String) session.getAttribute("user");
	out.println(usuario);
%>

<%=session.getAttribute("user") %>
<%=session.getAttribute("pass") %>
--%>




<%-- Forma 2 con c:if --%>
<c:set var="usuario" value="${sessionScope.user}"></c:set>

<c:if test="${usuario != null }">
	Bienvenido  <c:out value="${usuario}"></c:out>
</c:if>

<c:if test="${usuario == null }">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>





<%-- Forma 3 c:choose (como el switch en java 
<c:choose>

	<c:when test="${usuario != null}">
		Bienvenido  <c:out value="${usuario}"></c:out>
	</c:when>
	
	<c:otherwise>
		<c:redirect url="index.jsp"></c:redirect>
	</c:otherwise>

</c:choose>

--%>


</body>
</html>