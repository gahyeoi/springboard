<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit</title>
</head>
<body>
<%--<form:form modelAttribute="board" method="POST" action="../editok">--%>
<%--  <form:hidden path="seq"/>--%>
<%--  <table id="edit">--%>
<%--    <tr><td>카테고리</td><td><form:input path="category" /></td></tr>--%>
<%--    <tr><td>제목</td><td><form:input path="title" /></td></tr>--%>
<%--    <tr><td>글쓴이</td><td><form:input path="writer" /></td></tr>--%>
<%--    <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>--%>
<%--  </table>--%>
<%--  <input type="submit" value="수정하기"/>--%>
<%--  <input type="button" value="취소하기" onclick="history.back()"/>--%>

<form:form modelAttribute="board" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>카테고리</td><td><form:input path="category"></form:input></td></tr>
    <tr><td>제목</td><td><form:input path="title"></form:input></td></tr>
    <tr><td>글쓴이</td><td><form:input path="writer"></form:input></td></tr>
    <tr><td>내용</td><td><form:textarea path="content" cols="50" rows="5"></form:textarea></td></tr>
  </table>
  <button type="submit">게시글 수정</button>
  <button type="button" onclick="location.href='list'">목록보기</button>
</form:form>

</form>
</body>
</html>
