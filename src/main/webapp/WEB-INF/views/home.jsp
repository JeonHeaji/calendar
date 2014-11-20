<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>2008135098 전혜지</title>
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
</head>
<body>
	<div class="container wrapper">
		<div id="top">
			<h1>ASSIGHNMENT #4</h1>
			<table id="t_info">
				<tr>
					<td><b>name</b></td>
					<td>전 혜 지</td>
				</tr>
				<tr>
					<td><b>student ID</b></td>
					<td>2008135098</td>
				</tr>
				<tr>
					<td><b>submit date</b></td>
					<td>2014.11.20.THU</td>
				</tr>
			</table>
		</div>
		<div class="wrapper">
			<div id="main">
				<h2>CALENDAR USER LIST</h2>
				<table id="t1">
					<tr id="menu">
						<td>no</td>
						<td>ID</td>
						<td>EMAIL</td>
						<td>NAME</td>
					</tr>
					<c:forEach var="calendarUsersToDisplay"
						items="${calendarUsersToDisplay}" varStatus="status">
						<tr>
							<td><c:out value="${status.count}" /></td>
							<td><c:out value="${calendarUsersToDisplay.id}" /></td>
							<td><c:out value="${calendarUsersToDisplay.email}" /></td>
							<td><c:out value="${calendarUsersToDisplay.name}" /></td>
						</tr>
					</c:forEach>
				</table>

				<h3>EVENT LIST</h3>
				<table id="t2">
					<tr id="menu">
						<td>no</td>
						<td>ID</td>
						<td>SUMMARY</td>
						<td>DESCRIPTION</td>
						<td>OWNER</td>
						<td>NUMLIKES</td>
						<td>EVENTLEVEL</td>
					</tr>
					<c:forEach var="eventsToDisplay" items="${eventsToDisplay}"
						varStatus="status">
						<tr>
							<td><c:out value="${status.count}" /></td>
							<td><c:out value="${eventsToDisplay.id}" /></td>
							<td><c:out value="${eventsToDisplay.summary}" /></td>
							<td><c:out value="${eventsToDisplay.description}" /></td>
							<td><c:out value="${eventsToDisplay.owner.name}" /></td>
							<td><c:out value="${eventsToDisplay.numLikes}" /></td>
							<td><c:out value="${eventsToDisplay.eventLevel}" /></td>
						</tr>
					</c:forEach>
				</table>

				<h4>EVENT ATTENDEE LIST</h4>
				<table id="t3">
					<tr id="menu">
						<td>no</td>
						<td>ID</td>
						<td>EVENT ID</td>
						<td>ATTENDEE</td>

					</tr>
					<c:forEach var="eventAttenteesToDisplay"
						items="${eventAttenteesToDisplay}" varStatus="status">
						<tr>
							<td><c:out value="${status.count}" /></td>
							<td><c:out value="${eventAttenteesToDisplay.id}" /></td>
							<td><c:out value="${eventAttenteesToDisplay.event.id}" /></td>
							<td><c:out value="${eventAttenteesToDisplay.attendee.name}" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
