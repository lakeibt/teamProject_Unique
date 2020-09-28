<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<%
        // 파싱할 사이트를 적어준다(해당 사이트에 대한 태그를 다 긁어옴)
        request.setCharacterEncoding("utf-8");
		String param1 = request.getParameter("param");
		String num = request.getParameter("num");
 		Document doc2 = Jsoup.connect("https://www.wevity.com/?c=find&s=1&gub=1&cidx=" + param1 +"&gp="+ num).get();
%>
<%
        Elements posts = doc2.body().getElementsByClass("ms-list");
        Elements file = posts.select("li");
%>
<table class="table" style="font-size: 15px; margin-top: -18px;">
<%
		int i = 0;
        for(Element e : file){
%>
		<% if(i == 0) {i++; continue;} %>
		<tr>
			<td style="width:60%;"><a id="other" href="#coninfo_detail" onclick="content1('<%=e.select(".tit a").attr("href")%>')"><%=e.select(".tit a").text()%></a></td>
			<td id="detail" style="width:30%"><%=e.select(".organ").text()%></td>
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
			<td style="width:10%"><%= day2 %></td>
		</tr>
<%
			i++;
        }
%>
</table>
