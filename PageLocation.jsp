<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="common.Person"%>
<%
	Object PInt = (Integer)(pageContext.getAttribute("pageInteger"));
	Object str = (String) (pageContext.getAttribute("pageString"));
	Object p = (Person)(pageContext.getAttribute("pagePerson"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li><%=PInt == null? "값 없음" : PInt %></li>
	<li><%=str == null ? "값 없음" : str %></li>
	<li><%=p == null ? "값 없음" : ((Person)p).getName() %></li>
</ul>
</body>
</html>