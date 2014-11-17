<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
	<title>2008135098 전혜지</title>
</head>
<body>
<h1>
	ASSIGHNMENT #4 
</h1>
<table cellpadding="5">
	<tr><td align="right" bgcolor="cccccc"><b>name</b></td><td align="left" bgcolor="dddddd">전혜지</td></tr>
	<tr><td align="right" bgcolor="cccccc"><b>student ID</b></td><td align="left" bgcolor="dddddd">2008135098</td></tr>
	<tr><td align="right" bgcolor="cccccc"><b>submit date</b></td><td align="left" bgcolor="dddddd">2014.11.17.MON</td></tr>
</table>
<hr>
<font size = '5' color = "red">
	<b> CALENDAR USER LIST </b>
</font>
	<table cellpadding="5">
		<tr bgcolor="yellow">
			<td align="center" class="listtd"><b>no.</b></td>
			<td align="center" class="listtd"><b>ID</b></td>
			<td align="center" class="listtd"><b>EMAIL</b></td>
			<td align="center" class="listtd"><b>NAME</b></td>
		</tr>
		<c:forEach var="calendarUsers" items="${calendarUsers}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}"/></td>
				<td align="center" class="listtd"><c:out  value="${calendarUsers.id}"/></td>
				<td align="center" class="listtd"><c:out value="${calendarUsers.email}"/> </td>
				<td align="center" class="listtd"><c:out value="${calendarUsers.name}"/> </td>
			</tr>
		</c:forEach>
	</table>
<br/><br/>
<font size = '5' color = "green">
	<b> EVENT LIST </b>
</font>
	<table cellpadding="5">
		<tr bgcolor="yellow">
			<td align="center" class="listtd"><b>no.</b></td>
			<td align="center" class="listtd"><b>ID</b></td>
			<td align="center" class="listtd"><b>SUMMARY</b></td>
			<td align="center" class="listtd"><b>DESCRIPTION</b></td>
			<td align="center" class="listtd"><b>OWNER</b></td>
			<td align="center" class="listtd"><b>NUMLIKES</b></td>
			<td align="center" class="listtd"><b>EVENTLEVEL</b></td>
		</tr>
		<c:forEach var="events" items="${events}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}"/></td>
				<td align="center" class="listtd"><c:out  value="${events.id}"/></td>
				<td align="center" class="listtd"><c:out value="${events.summary}"/> </td>
				<td align="center" class="listtd"><c:out  value="${events.description}"/></td>
				<td align="center" class="listtd"><c:out value="${events.owner.name}"/> </td>
				<td align="center" class="listtd"><c:out value="${events.numLikes}"/> </td>
				<td align="center" class="listtd"><c:out value="${events.eventLevel}"/> </td>
			</tr>
		</c:forEach>
	</table>
<br/><br/>
<font size = '5' color = "blue">
	<b> EVENT ATTENDEE LIST </b>
</font>
	<table cellpadding="5">
		<tr bgcolor="yellow">
			<td align="center" class="listtd"><b>no</b></td>
			<td align="center" class="listtd"><b>ID</b></td>
			<td align="center" class="listtd"><b>EVENT ID</b></td>
			<td align="center" class="listtd"><b>ATTENDEE</b></td>

		</tr>
		<c:forEach var="eventAttentees" items="${eventAttentees}" varStatus="status">
			<tr>
				<td align="center" class="listtd"><c:out value="${status.count}"/></td>
				<td align="center" class="listtd"><c:out  value="${eventAttentees.id}"/></td>
				<td align="center" class="listtd"><c:out value="${eventAttentees.event.id}"/> </td>
				<td align="center" class="listtd"><c:out value="${eventAttentees.attendee.name}"/> </td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
