<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  JSP에서 jsoup을 사용하기 위해 import -->
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 		Document doc2 = Jsoup.connect("https://www.wevity.com/?c=find&s=1&gub=1&gbn=viewok&gp=1&ix=45111").get();
%>

<%
        Elements posts = doc2.body().getElementsByClass("contest-detail");
        Elements file = posts.select("div");
%>
		<img src = "https://www.wevity.com<%=file.select(".thumb img").attr("src")%>"><br>
			<%=file.select(".tit-area h6").text()%> <br>
			<%=file.select(".thumb img").attr("src")%> <br>
			<%=file.select(".info .cd-info-list li:eq(0)").text().substring(2)%><br> 
			<%=file.select(".info .cd-info-list li:eq(1)").text().substring(4)%> <br>
			<%=file.select(".info .cd-info-list li:eq(2)").text().substring(5)%> <br>
			<%=file.select(".info .cd-info-list li:eq(3)").text().substring(5)%> <br>
			<%=file.select(".info .cd-info-list li:eq(4)").text().substring(4)%> <br>
			<%=file.select(".info .cd-info-list li:eq(5)").text().substring(4)%> <br>
			<%=file.select(".info .cd-info-list li:eq(6)").text().substring(5)%> <br>
			<%=file.select(".info .cd-info-list li:eq(7)").text().substring(4)%> <br>
			<%=file.select(".info .cd-info-list li:eq(8)").text().substring(4)%> <br><br>
</body>
</html>