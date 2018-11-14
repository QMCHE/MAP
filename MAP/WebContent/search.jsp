<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.js"></script>
<script src="js/jquery.datetimepicker.full.min.js"></script>
<script>	
    jQuery(document).ready(function () {
    	
    		$('.radio').click(function(){
    			var st = $(":input:radio[name=memberid]:checked").val();
    			opener.newform.members.value+=st+";";
    		});
    });
</script>
</head>
<body>
<form action="searchmember">
	<input type="text" name="searchstring" value="이름 또는 이메일" onfocus="this.value=''" >
	<input type="submit" value="검색">
</form>

<c:if test="${not empty searchresult}">
	<c:forEach var="search" items="${searchresult}">
	<input type="radio" name="memberid" value="${search.id}" class="radio">${search.id}
	</c:forEach>
</c:if>
</body>
</html>