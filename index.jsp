<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>    
<%  
	String oriurl = (String)request.getAttribute("oriurl");
	String shorten_url = (String)request.getAttribute("resurl");

	if(oriurl == null) oriurl = "";
	if(shorten_url == null) shorten_url = "";
%>
    
<!DOCTYPE html>
<html>

<head>
<script language ="javascript">
function shorten_click() {
	
	var origin_url = document.writeform.origin_url.value ;
	
	alert(origin_url);
	var form = document.writeform;
	form.action = "/getUrlServlet";
	//f.method = "get";
	form.submit();
	
}
function goWebsite() {
	
	var url= document.writeform.shorten_url.value;
	
	//url = "http://naver.com";
	url = "http://" +  url;
	alert(url);
	window.open(url,"popup","width=1000, height=700, location=yes");
	
}
</script>
</head>

<body>

<h1 align = "center">Enter a long URL to make shorten</h1>
<form method="post" action="urlShorten/UrlShortenMakeServlet" name="writeform">
	<h1 align = "center"> 원본link 
	<input type ="text" name= "origin_url" value="<%= oriurl %>">
	<input type ="button" value="shorten" onclick="shorten_click()"/></h1>
	<br/>
	<h1 align = "center"> 변경link <input type ="text" name= "shorten_url" value="<%= shorten_url %>">
	<input type ="button" value="goWebsite" onclick="goWebsite()"/></h1>
	
	
</form>
</html>