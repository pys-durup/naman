<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/naman/resources/css/mypage.css?after">

<tiles:insertAttribute name="asset_yjb"></tiles:insertAttribute>

<style>
	#secondtilte {
		margin-top : 180px;
		float : left;
		width : 250px;
		
	}
	#thirdtitle {
		margin-top : 130px;
		float : left;
	}
	
	#fourthtitle {
		
		float : left;
		width : 800px;
	
	}
	
	#mypageContain {
		width : 1350px;
		height : 1000px; 
		margin : 0px auto;
	}
	
</style>

</head>
<body>

	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	
	<div id="mypageContain">
	
		<div id="secondtilte">
			<tiles:insertAttribute name="side"></tiles:insertAttribute>
		</div>
		
		<div id="thirdtitle">
			<tiles:insertAttribute name="top"></tiles:insertAttribute>
		</div>
		
		<div id="fourthtitle">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
	</div>
	
</body>
</html>