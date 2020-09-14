<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<c:set var = "resources" value = "${pageContext.request.contextPath}/resources/"/>
<c:set var = "img" value = "${pageContext.request.contextPath}/resources/img/"/>
<c:set var = "stu_photo" value = "${pageContext.request.contextPath}/resources/img/profile_photo/student/"/>
<c:set var = "pro_photo" value = "${pageContext.request.contextPath}/resources/img/profile_photo/professor/"/>
<c:set var = "man_photo" value = "${pageContext.request.contextPath}/resources/img/profile_photo/manager/"/>

<script src = "${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script src = "${pageContext.request.contextPath}/resources/js/guest.js"></script>

<c:set var = "path" value="${pageContext.request.contextPath}/"/>
<c:set var = "admin" value="${pageContext.request.contextPath}/admin/" />
<c:set var = "guest" value="${pageContext.request.contextPath}/guest/" />
<c:set var = "include" value="${pageContext.request.contextPath}/include/" />
<c:set var = "student" value="${pageContext.request.contextPath}/student/" />
<c:set var = "professor" value="${pageContext.request.contextPath}/professor/" />

<c:set var = "bootstrap" value="${pageContext.request.contextPath}/bootstrap/" />