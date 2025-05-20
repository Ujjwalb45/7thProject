<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
</head>
<body>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Photo</th>
      <th scope="col">Interest</th>
      <th scope="col">Job</th>
      <th scope="col">Height</th>
      <th scope="col">Weight</th>
    </tr>
  </thead>

  <c:if test="${!empty updateList}">
    <tbody>
      <c:forEach items="${updateList}" var="updateUser">
        <tr>
        <!--   <td>
            <img src="${updateUser.imagePath}">
          </td>
           -->
           <td><c:out value="${updateUser.imagePath}"></c:out></td>
          <td><c:out value="${updateUser.interest}"></c:out></td>
          <td><c:out value="${updateUser.job}"></c:out></td>
          <td><c:out value="${updateUser.height}"></c:out></td>
          <td><c:out value="${updateUser.weight}"></c:out></td>
        </tr>
      </c:forEach>
    </tbody>
  </c:if>

</table>

</body>
</html>
