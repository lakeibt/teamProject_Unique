<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<c:set var = "reso" value = "/uni/resources/"/>
<c:set var = "path_img" value = "/uni/resources/img/"/>
<script src = "/uni/resources/js/jquery-3.5.1.min.js"></script>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="admin" value="${pageContext.request.contextPath}/admin/" />
<c:set var="guest" value="${pageContext.request.contextPath}/guest/" />
<c:set var="include" value="${pageContext.request.contextPath}/include/" />
<c:set var="student" value="${pageContext.request.contextPath}/student/" />
<c:set var="professor" value="${pageContext.request.contextPath}/professor/" />
