<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- <%@ include file="/WEB-INF/views/inc/asset.jsp" %> --%>
<tiles:insertAttribute name="asset"></tiles:insertAttribute> <!-- tiles.xml의 asset -->

</head>
<body>
	
	<main>
		<tiles:insertAttribute name="submenu"></tiles:insertAttribute>
		<tiles:insertAttribute name="mainmenu"></tiles:insertAttribute>
		<tiles:insertAttribute name="content"></tiles:insertAttribute>	
	</main>


</body>
</html>



