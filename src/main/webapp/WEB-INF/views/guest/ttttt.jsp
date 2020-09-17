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

<%
        for(Element e : file){
%>
			<%=e.select(".tit-area h6").text()%> <br>
			<%=e.select(".thumb img").attr("src")%> <br>
			<% String title = e.select(".info .cd-info-list li:eq(0)").text(); String title2 = title.substring(3); %>
			<%= title2 %><br>
			<%-- <%= titlee %><br> --%>
			<%=e.select(".info .cd-info-list li:eq(1)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(2)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(3)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(4)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(5)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(6)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(7)").text()%> <br>
			<%=e.select(".info .cd-info-list li:eq(8)").text()%> <br><br>
			<%=e.select(".article .comm-desc").text()%> <br><br>
<%
        }
%>
</body>
</html>