<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="checkerboard.css">
</head>
<body>
	<h1><%= "Checkerboard: " + request.getParameter("width") + "w X " + request.getParameter("height") + "h" %></h1>
	<% int numRows; int numCols; %>
	<% if(request.getParameter("height") == null || request.getParameter("width") == null){ numRows = 10; numCols = 10;%>
	<%} else{ %>
		<% numRows = Integer.parseInt(request.getParameter("height")); %>
		<% numCols = Integer.parseInt(request.getParameter("width")); %>
	<%} %>
	<% for(int row = 1; row <= numRows; row++){ %>
		<div class="row">
		<% for(int col = 1; col <= numCols; col++){ %>
			<% if((row+col)%2 == 1){ %>
				<div class="block red"></div>
			<%}else{ %>
				<div class="block black"></div>
			<% } %>
		<% } %>
		</div>
	<% } %>
</body>
</html>