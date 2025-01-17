<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--  favicons  --%>
    <link rel="apple-touch-icon" sizes="57x57"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180"
          href="${pageContext.request.contextPath}/resources/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"
          href="${pageContext.request.contextPath}/resources/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32"
          href="${pageContext.request.contextPath}/resources/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96"
          href="${pageContext.request.contextPath}/resources/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/resources/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="${pageContext.request.contextPath}/resources/img/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <title>Admin</title>

    <%--  Bootstrap  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>

<h1>Admin</h1>

<hr>
<h2>파일</h2>
<form method="post" action="/admin/file" enctype="multipart/form-data">
    <input type="text" name="adminId"/>
    <input type="password" name="adminPw"/>
    <input type="file" name="file">
    <input type="submit">
</form>
<br>
<table>
    <c:forEach items="${files}" var="m">
        <tr><c:out value="${m.fileId}"/></tr>
        <tr><c:out value="${m.originalName}"/></tr>
        <tr><c:out value="${m.type}"/></tr>
        <tr><c:out value="${m.userId}"/></tr>
        <tr><c:out value="${m.uploaded}"/></tr>
        <tr><c:out value="${m.fileId}"/></tr>
    </c:forEach>
</table>

<hr>
<h2>시장</h2>
<form method="post" action="/admin/market">
    <input type="text" name="adminId" placeholder="adminId"/>
    <input type="password" name="adminPw" placeholder="adminPw"/>
    <input type="text" name="marketName" placeholder="marketName"/>
    <input type="text" name="marketDesc" placeholder="marketDesc"/>
    <input type="text" name="longitude" placeholder="longitude"/>
    <input type="text" name="latitude" placeholder="latitude"/>
    <input type="time" name="openTime" placeholder="openTime"/>
    <input type="time" name="closeTime" placeholder="closeTime"/>
    <input type="text" name="openDay" placeholder="openDay"/>
    <input type="number" name="fileId" placeholder="fileId"/>
    <input type="submit">
</form>
<br>
<table>
    <c:forEach items="${markets}" var="m">
        <tr><c:out value="${m.marketId}"/></tr>
        <tr><c:out value="${m.marketName}"/></tr>
        <tr><c:out value="${m.marketDesc}"/></tr>
        <tr><c:out value="${m.longitude}"/></tr>
        <tr><c:out value="${m.latitude}"/></tr>
        <tr><c:out value="${m.openTime}"/></tr>
        <tr><c:out value="${m.closeTime}"/></tr>
        <tr><c:out value="${m.openDay}"/></tr>
    </c:forEach>
</table>

<hr>
<h2>주차장</h2>
<form method="post" action="/admin/parking">
    <input type="text" name="adminId" placeholder="adminId"/>
    <input type="password" name="adminPw" placeholder="adminPw"/>
    <input type="text" name="marketId" placeholder="marketId"/>
    <input type="text" name="parkingName" placeholder="parkingName"/>
    <input type="text" name="longitude" placeholder="longitude"/>
    <input type="text" name="latitude" placeholder="latitude"/>
    <input type="number" name="capacity" placeholder="capacity"/>
    <input type="submit">
</form>
<br>
<table>
    <c:forEach items="${parkings}" var="m">
        <tr><c:out value="${m.parkingId}"/></tr>
        <tr><c:out value="${m.parkingName}"/></tr>
        <tr><c:out value="${m.marketId}"/></tr>
        <tr><c:out value="${m.longitude}"/></tr>
        <tr><c:out value="${m.latitude}"/></tr>
        <tr><c:out value="${m.capacity}"/></tr>
    </c:forEach>
</table>


<%-- Bootstrap --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous">
</script>
</body>

</html>