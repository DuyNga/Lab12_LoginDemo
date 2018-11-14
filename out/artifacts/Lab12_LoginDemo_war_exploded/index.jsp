<%--
  Created by IntelliJ IDEA.
  User: duynga
  Date: 11/13/18
  Time: 11:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>Insert title here</title>
  </head>
  <body>
  <form action="login" method="post">
    User Name: <input type="text" value="${cookie.user.value}"
                      name="user_name" /><br /> Password: <input type="password"
                                                                 name="pass" /><br /> Remember Me: <input type="checkbox"
                                                                                                          <c:if test="${cookie.containsKey('user')}">checked</c:if>
                                                                                                          name="remember" value="yes"><br /> <input type="submit">
  </form>
  <span style="color: red">${err_msg}</span>
  </body>
</html>
