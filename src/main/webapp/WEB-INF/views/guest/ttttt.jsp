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
        // 파싱할 사이트를 적어준다(해당 사이트에 대한 태그를 다 긁어옴)
 	Document doc2 = Jsoup.connect("https://www.wevity.com/?c=find&s=1&gub=1").get();
%>
<%
        //System.out.println(doc2.data());
        //System.out.println(doc2.body());
        // list 속성안에 li 요소 데이터들을 긁어온다
        Elements posts = doc2.body().getElementsByClass("ms-list");
        //System.out.println(doc2.getElementsByClass("list"));
        Elements file = posts.select("li");
        // System.out.println(posts.select("li"));
        // li 요소 데이터들 반복적으로 츨력(li 요소 끝날때까지 즉, li개수만큼 반복문)
        // select() : select()를 통해 더 구석구석 데이터에 접근
        // 구성요소.text() : 구성요소 값을 반환(태그는 포함되지 않음)
        // 구성요소.attr("속성이름") : 구성요소에 "속성이름"에 대한 값을 반환
%>

<%
        for(Element e : file){
%>
			<%=e.select(".tit a").text()%> <br>
			<%=e.select(".tit a").attr("href")%> <br>
			<%=e.select(".organ").text()%> <br>
			<% String day = e.select(".day").text();
				String day2 = "";
				if(day.substring(day.length()-3, day.length()).equals("접수중")) {
					day2 = day.substring(0, day.length()-4);					
				} else if(day.substring(day.length()-4, day.length()).equals("접수예정") || day.substring(day.length()-4, day.length()).equals("마감임박")) {
					day2 = day.substring(0, day.length()-5);
				} else {
					day2 = day;
				}
			%>
			<%= day2 %><br><br>
<%
        }
%>
</body>
</html>