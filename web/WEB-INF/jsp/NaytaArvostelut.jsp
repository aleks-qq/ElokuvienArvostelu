<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elokuva-arvostelut lisätty ajaxilla</title>
</head>
<body style="color: green;">
	Seuraavat elokuva-arvostelut ovat listalla :<br>
	<ul>
	<c:forEach items="${Elokuvat}" var="elokuvaA">
		<li>Elokuvan nimi: <c:out value="${elokuvaA.nimi}" />; <br> Arvostelu: <c:out value="${elokuvaA.arvostelu}"/>
	</c:forEach>
	</ul>
</body>
</html>