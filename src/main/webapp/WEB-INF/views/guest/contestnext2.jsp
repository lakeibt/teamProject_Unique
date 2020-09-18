<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<%
        request.setCharacterEncoding("utf-8");
		String url = request.getParameter("url");
 		Document doc2 = Jsoup.connect("https://www.wevity.com/" + url).get();
%>

<%
        Elements posts = doc2.body().getElementsByClass("contest-detail");
        Elements file = posts.select("div");
%>

<div class="col-lg-12 d-flex flex-column justify-content-center-center">
	<div class="icon-box" style="padding-top: 50px;">
		<div style="width: 40%; float: left;">
		<img src = "https://www.wevity.com<%=file.select(".thumb img").attr("src")%>" style="width: 70%"><br>
		</div>
		<div style="width: 60%; float: right;">
			<h4><%=file.select(".tit-area h6").text()%></h4>
			<table id="target" class="table" style="font-size:14px;">
				<tbody>
					<tr>
						<th width="20%">분야</th>
						<td><%=file.select(".info .cd-info-list li:eq(0)").text().substring(2)%></td>
					</tr>
					<tr>
						<th>응모대상</th>
						<td><%=file.select(".info .cd-info-list li:eq(1)").text().substring(4)%></td>
					</tr>
					<tr>
						<th>주최/주관</th>
						<td><%=file.select(".info .cd-info-list li:eq(2)").text().substring(5)%></td>
					</tr>
					<tr>
						<th>후원/협찬</th>
						<td><%=file.select(".info .cd-info-list li:eq(3)").text().substring(5)%></td>
					</tr>
					<tr>
						<th>접수기간</th>
						<td><%=file.select(".info .cd-info-list li:eq(4)").text().substring(4)%></td>
					</tr>
					<tr>
						<th>총 상금</th>
						<td><%=file.select(".info .cd-info-list li:eq(5)").text().substring(4)%></td>
					</tr>
					<tr>
						<th>1등 상금</th>
						<td><%=file.select(".info .cd-info-list li:eq(6)").text().substring(5)%></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><a href="<%=file.select(".info .cd-info-list li:eq(7)").text().substring(4)%>"><%=file.select(".info .cd-info-list li:eq(7)").text().substring(4)%></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>