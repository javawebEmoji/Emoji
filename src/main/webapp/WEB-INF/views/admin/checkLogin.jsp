<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/12/5
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%--防强行跳转 --%>
<%
    if (session.getAttribute("isAdminLogin") == null) {
        out.println("<script>" +
                "window.location='login';" +
                "alert('请先登录');"+
                "</script>");
    }
%>
