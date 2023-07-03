<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="/assets/css/styles.css">
    <%--    <link rel="stylesheet" href="static/css/style.css">--%>
    <title>PROJECT-HR</title>
</head>
<body id="body-pd">
<%@include file="/views/include/header.jsp" %>

<div class="main">

    <div class="main_title">
        <h2>근무일정 유형</h2>
        <button><a href="/views/admin/manage/workScheduleModal.jsp">근무일정 유형 추가하기</a></button>
    </div>

    <table class="table table-hover">
        <thead>
        <tr>
            <th></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
            <th><input type="text" placeholder="검색.."></th>
        </tr>
        <tr>
            <th><input type="checkbox"> </th>
            <th>근로일정 유형명</th>
            <th>조직</th>
            <th>출근가능여부</th>
            <th>연장근무일정여부</th>
            <th>휴일근무 미적용 여부</th>
            <th>간주근로 여부</th>
            <th>간주근로 고정근무시간</th>
            <th>출근 전 확인사항</th>
            <th>메모</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="checkbox"> </td>
            <td>외근</td>
            <td>개발팀</td>
            <td>프론트</td>
            <td>O</td>
            <td>X</td>
            <td>X</td>
            <td>X</td>
            <td>9h</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><input type="checkbox"> </td>
            <td>재택근무</td>
            <td>개발팀</td>
            <td>백엔드</td>
            <td>O</td>
            <td>X</td>
            <td>X</td>
            <td>X</td>
            <td>9h</td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" />
</body>
</html>