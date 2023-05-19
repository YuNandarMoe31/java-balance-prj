<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<%
String message = (String) request.getAttribute("message");
if (null != message && !message.isEmpty()) {
%>
<div class="error-txt">
<img src="<%=getSvg("notification") %>" alt="ErrorMessage" class="icon icn-svg" />
	<p class="message"><%=message%></p>
</div>
<%
}
%>