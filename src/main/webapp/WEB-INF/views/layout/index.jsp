<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<tiles:insertAttribute name="asset_yjb"></tiles:insertAttribute>

<style>
	

	
	#secondtitle {
		margin-top : 200px;
		position: relative;
		left: 0px;
		top: 0px;
	}
	#thirdtitle {
		margin-top : 200px;
	}
</style>

</head>
<body>
	

	<div id="firsttitle">
	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	
	<div id="secondtitle">
	<tiles:insertAttribute name="search"></tiles:insertAttribute>
	</div>
	
	<div id="thirdtitle">
	<tiles:insertAttribute name="ad"></tiles:insertAttribute>
	</div>
	

</body>
</html>