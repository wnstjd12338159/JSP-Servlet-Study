<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locale클래스를 이용한 다국어 처리-1</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
		// 요청한 클라이언트의 Locale정보를 가져오는 코드
		Locale locale = request.getLocale();
		Date date = new Date();
		
		// DateFormat클래스는 정해진 포맷을 상수(FULL,LONG,WEDIUM,SHORT)로 제공하고있는 클래스다.
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale);
		
		NumberFormat numberFormat =NumberFormat.getNumberInstance(locale);
		
		
		// SimpleDateFormat클래스는 DateFormat을 상속 받았고 원하는 출력 형태를 직접 지정하고자 할 때 사용한다.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	%>
	<p> 국가 : <%= locale.getDisplayCountry() %>
	<p> 국가 코드 : <%= locale.getCountry() %>
	<p> 국가 언어 : <%= locale.getDisplayLanguage() %>
	<p> 국가 언어 : <%= locale.getDisplayLanguage(locale) %>
	
	
	<p> 날짜 : <%= dateFormat.format(date) %>
	<p> 날짜 : <%= sdf.format(date) %>
	
	<p> 숫자(123456.67) : <%= numberFormat.format(123456.67) %>
</body>
</html>