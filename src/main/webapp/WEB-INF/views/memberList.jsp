<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>memberList.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <table class="table table-striped table-hover">
            <tr>
                <th>Id</th>
                <th>이메일</th>
                <th>비밀번호</th>
                <th>이름</th>
                <th>나이</th>
                <th>전화번호</th>
                <th>조회</th>
                <th>삭제</th>
            </tr>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td>
                        <a href="/member?id=${member.id}">${member.memberEmail}</a>
                    </td>
                    <td>${member.memberPassword}</td>
                    <td>${member.memberName}</td>
                    <td>${member.memberAge}</td>
                    <td>${member.memberMobile}</td>
                    <td>
                        <a href="/member?id=${member.id}">조회</a>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="deleteMember('$member.id')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
<script>
    const deleteMember = (clickedId) => {
        <%--console.log('${memberList}');--%>
        <%--console.log('${memberList.id}');--%>
        console.log("클릭한 id값: ", clickedId);
        location.href = "/delete?id="+clickedId;
    }
</script>
</html>
