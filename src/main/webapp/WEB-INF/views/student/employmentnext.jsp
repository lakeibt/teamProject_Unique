<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<style>
.dark-edition a {color:black;}
</style>
<%
    // 파싱할 사이트를 적어준다(해당 사이트에 대한 태그를 다 긁어옴)
    request.setCharacterEncoding("utf-8");
	String param1 = request.getParameter("Major_Big_Code");
	String param2 = request.getParameter("Major_Big_Name");
	String param3 = request.getParameter("Major_Code");
	String param4 = request.getParameter("Major_Name");
	Document doc2 = Jsoup.connect("http://www.jobkorea.co.kr/Top100/?Main_Career_Type=1&Search_Type=2&BizJobtype_Bctgr_Code=0&BizJobtype_Bctgr_Name=%EC%A0%84%EC%B2%B4&BizJobtype_Code=0&BizJobtype_Name=%EC%A0%84%EC%B2%B4&Major_Big_Code="+param1+"&Major_Big_Name="+param2+"&Major_Code="+param3+"&Major_Name="+param4+"&Edu_Level_Code=9&Edu_Level_Name=%EC%A0%84%EC%B2%B4&Edu_Level_Name=%EC%A0%84%EC%B2%B4&MidScroll=&duty-depth1=on").get();
%>

<%
	Elements posts = doc2.body().getElementsByClass("rankList");
	Elements file = posts.select("li");
%>
<%
    for(Element e : file){
%>
	<tr>
		<td style="width:20%"><%=e.select(".coTit a").text()%></td>
		<td id="detail" style="width:70%">
			<a style="color:black;" id="other" href="#coninfo_detail" class="scroll" onclick="content1('<%=e.select(".tit a").attr("href")%>')">
			<h5><%=e.select(".tit a").attr("title")%></h5>
			</a><br>
			<%=e.select(".sTit span:eq(0)").text()%> / <%=e.select(".sTit span:eq(1)").text()%> / <%=e.select(".sTit span:eq(2)").text()%> / <%=e.select(".sTit span:eq(3)").text()%><br>
			<%=e.select(".sDsc span:eq(0)").text()%> / <%=e.select(".sDsc span:eq(1)").text()%> / <%=e.select(".sDsc span:eq(2)").text()%> / <%=e.select(".sDsc span:eq(3)").text()%><br>
		</td>
		<td style="width:10%"><%=e.select(".day").text()%></td>
	</tr>
<%
    }
%>
