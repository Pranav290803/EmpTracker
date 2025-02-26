<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Associate Home</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
<%
    HttpSession sess = request.getSession(false);
    String username = (String) sess.getAttribute("username");
    String uid = (String) sess.getAttribute("uid");
    String role = (String) sess.getAttribute("role");
    
    if (username != null) {
        out.print("Hi Associate " + username + "<br>");
        out.print("User ID: " + uid + "<br>");
        out.print("Role: " + role + "<br>");
    } else {
        out.print("No user logged in.");
    }
%>
<br>
<form action="AssociateHomeServlet" method="post">
    <label>U_id: <input type="text" id="username" name="id" value="<%=uid%>" readonly></label><br>
    <label>Name: <input type="text" id="name" name="name"></label><br>
    <label>Date: <input type="date" id="date" name="date"></label><br>
    <label>Start: <input type="text" id="start" name="start"></label><br>
    <label>End: <input type="text" id="end" name="end"></label><br>
    <label>Time: <input type="text" id="time" name="time"></label><br>
    <label>Title of work: <input type="text" id="title" name="title"></label><br>
    <label>Description: <input type="text" id="description" name="description"></label><br>
    <label>Role: <input type="text" id="role" name="role" value="<%=role%>" readonly></label><br>
    <input type="submit" value="ADD">
</form>

<form action="viewTasks.jsp" method="post">
    <input type="submit" value="View My Tasks">
</form>
<br>
<form action="daily.jsp" method="post">
    <input type="hidden" name="id" value="<%= uid %>">
    <input type="submit" value="Daily">
</form>
<form action="monthly.jsp" method="post">
    <input type="hidden" name="id" value="<%= uid %>">
    <input type="submit" value="Monthly">
</form>
<form action="weekly.jsp" method="post">
    <input type="hidden" name="id" value="<%= uid %>">
    <input type="submit" value="Weekly">
</form>
<form action="Assosiate.jsp" method="post">
    <input type="submit" value="Logout" class="back-button">
</form>
</div>
</body>
</html>
