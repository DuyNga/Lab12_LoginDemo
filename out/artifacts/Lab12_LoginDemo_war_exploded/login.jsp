<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<%
    String check = "";
    Cookie cookie = null;
    Cookie[] cookies = null;

    // Get an array of Cookies associated with the this domain
    cookies = request.getCookies();

    if (cookies != null) {

        for (int i = 0; i < cookies.length; i++) {
            cookie = cookies[i];
            if ("user".equals(cookie.getName()) && cookie.getValue() != null) {
                check = "checked";
                break;
            }
        }
    }
%>
<form action="login" method="post">
    User Name: <input type="text" value="${cookie.user.value}"
                      name="user_name"/><br/>
    Password: <input type="password"
                     name="pass"/><br/>
    Remember Me: <input type="checkbox"
<%--<c:if test="${cookie.containsKey('user')}">checked</c:if>--%>
    <%= check %> name="remember" value="yes"><br/> <input type="submit">
</form>
<span style="color: red">${err_msg}</span>
</body>
</html>