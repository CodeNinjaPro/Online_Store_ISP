<%-- 
    Document   : logout
    Created on : Sep 5, 2020, 5:23:26 PM
    Author     : Roshan Withanage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        session.invalidate();
        response.sendRedirect("login.jsp");
    %>
</html>
