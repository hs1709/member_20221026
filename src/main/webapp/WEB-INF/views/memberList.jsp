<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberList.jsp</title>
</head>
<body>
    <table>
        <tr>
            <th>Id</th>
            <th>이메일</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>나이</th>
            <th>전화번호</th>
        </tr>
        <c:foreach items="${memberList}" var="member">
            <tr>
                <td>${member.memberId}</td>
                <td>${member.memberEmail}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberAge}</td>
                <td>${member.memberMobile}</td>
            </tr>
        </c:foreach>
    </table>
</body>
</html>
