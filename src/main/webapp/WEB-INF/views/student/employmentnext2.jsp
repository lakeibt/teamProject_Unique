<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<%
        // 파싱할 사이트를 적어준다(해당 사이트에 대한 태그를 다 긁어옴)
        request.setCharacterEncoding("utf-8");
		String url = request.getParameter("url");
 		Document doc2 = Jsoup.connect("http://www.jobkorea.co.kr"+url).get();
%>

<%
		Elements posts = doc2.body().getElementsByClass("readSumWrap clear");
		Elements file = posts.select("div");
%>
<div class="col-lg-12 d-flex flex-column justify-content-center-center">
	<div class="icon-box" >
		<div style="width:65%; float: left;">
			<%=file.select(".sumTit span").text()%><br>
			<h4><%=file.select(".sumTit h3").text().substring(file.select(".sumTit span").text().length())%></h4>
			<table class="table" style="font-size:15px; width: 650px;">
				<tr>
					<th style="width: 15%">지원자격</th>
					<td style="width: 35%"></td>
					<th style="width: 15%">근무조건</th>
					<td style="width: 35%"></td>
				</tr>
				<tr>
					<th>경력</th>
					<td><%=file.select("div:nth-child(1) dl dd:nth-child(2) strong").text()%></td>
					<th>고용형태</th>
					<td><%=file.select("div:nth-child(2) dl dd:nth-child(2) ul li").text()%></td>
				</tr>
				<tr>
					<th>학력</th>
					<td><%=file.select("div:nth-child(1) dl dd:nth-child(4) strong").text()%></td>
					<th>지역</th>
					<td><%=file.select("div.tbRow.clear div:nth-child(2) dl dd:nth-child(6)").text()%></td>
				</tr>
				<tr>
					<th>기본우대</th>
					<td><%=file.select("#popupPref div div dl dd:nth-child(2)").text()%></td>
					<th>시간</th>
					<td><%=file.select("div.tbRow.clear div:nth-child(2) dl dd:nth-child(8)").text()%></td>
				</tr>
				<tr>
					<th>우대전공</th>
					<td><%=file.select("#popupPref div div dl dd:nth-child(4)").text()%></td>
					<th>직급</th>
					<td><%=file.select("article div.tbRow.clear div:nth-child(2) dl dd:nth-child(10)").text()%></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<th>직책</th>
					<td><%=file.select("article div.tbRow.clear div:nth-child(2) dl dd:nth-child(12)").text()%></td>
				</tr>
			</table>
		</div>
		<div style="width:30%; float: right; margin-right: 35px;">
			<img src="<%=file.select(".logo img").attr("src")%>" style="width: 200px; height: 80px; padding-bottom: 15px; margin-left: 50px;">
			<table class="table" style="width:350px;">
				<tr>
					<th style="width:25%;">기업정보</th>
					<td style="width:75%;"></td>
				</tr>
				<tr>
					<th>산업(업종)</th>
					<td><%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(2)").text()%></td>
				</tr>
				<tr>
					<th>사원수</th>
					<td><%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(4)").text()%></td>
				</tr>
				<tr>
					<th>설립연도</th>
					<td><%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(6)").text()%></td>
				</tr>
				<tr>
					<th>기업형태</th>
					<td><%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(8)").text()%></td>
				</tr>
				<tr>
					<th>홈페이지</th>
					<td><a href="http://<%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(10)").text()%>"><%=file.select("article div.tbRow.clear div.tbCol.tbCoInfo dl dd:nth-child(10)").text()%></a></td>
				</tr>
			</table>
		</div>
	</div>
</div>
