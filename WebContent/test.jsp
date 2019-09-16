<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="jsptest.HelloTest" %>
<html>
<body>

<%
HelloTest h = new HelloTest();
%>

<h1><%=h.getName() %></h1>
<%h.setName("Computer"); %>
<h1><%=h.getName() %></h1>

</body>
</html>
