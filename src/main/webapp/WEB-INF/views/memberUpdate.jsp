<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        #update-form {
            width: 800px;
        }
    </style>
</head>
<body>
<div class="container" id="update-form">
<form action="/update" method="post" name="update-form">
    <input type="text" name="id" value="${member.id}" value="${member.id}" class="form-control" readonly>
    <input type="text" name="memberEmail" value="${member.memberEmail}" class="form-control" readonly>
    <input type="text" name="memberPassword" class="form-control">
    <input type="text" name="memberName" value="${member.memberName}" class="form-control">
    <input type="text" name="memberAge" value="${member.memberAge}" class="form-control">
    <input type="text" name="memberMobile" value="${member.memberMobile}" class="form-control">
    <input type="button" value="수정" class="btn btn-warning" onclick="update()">
</form>
</div>
</body>
<script>
    const update = () => {
        const passwordDB = '${member.memberPassword}'; // DB에서 가져온 비밀번호
    /*
        사용자가 input 태그에 입력한 비밀번호와 DB에서 가져온 비밀번호가 일치하면 수정 요청을 보내고
        일치하지 않으면 alert로 비밀번호가 일치하지 않습니다. 출력
     */
        const password = document.getElementById("memberpassword").value;
        if (passwordDB == password) {
            // location.href = "save 함수호출";
            document.updateForm.submit();
        } else if () {
            alert("비밀번호가 일치하지 않습니다");
        }
    }
</script>
</html>
