<%-- 
    Document   : login
    Created on : Oct 18, 2017, 6:32:39 PM
    Author     : 578291
--%>

<%@tag description="logintag" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="login"%>

<%-- any content can be specified here e.g.: --%>
<form action="login" method="post">
    Username: <input type="text" name="username" value="${username}">
    Password: <input type="password" name="password">
    <input type="submit" name="submit">
    <input type="checkbox" name="rememberme" value="remember" ${remember}>Remember me
</form>
<p>${incorrect}</p>