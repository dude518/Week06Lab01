<%-- 
    Document   : Login
    Created on : Oct 3, 2017, 1:47:15 PM
    Author     : 578291
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="saitTag" tagdir="/WEB-INF/tags" %>
<c:import url="/includes/header.html"/>
<sait:debugHandler>
	Remote Host: ${pageContext.request.remoteHost}<br />
	Session ID: ${pageContext.session.id}
</sait:debugHandler>
<h1>Remember me login page</h1>
<saitTag:login/>
<c:import url="/includes/footer.html"/>
