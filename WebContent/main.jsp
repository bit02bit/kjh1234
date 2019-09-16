<%@ page contentType="text/html;charset=UTF-8"%>

<%
    String checkName = "";
    String checkId = "";
   
   
    checkName = (String)session.getAttribute("s_Name");
   
    if(checkName == null)
    {
        response.sendRedirect("./login.jsp");
    }
   
    checkId = (String)session.getAttribute("s_Id");
%>

<html>
    <body>
        안녕하세요?<br/>
        <%=checkName%>(<%=checkId%>)님!<br/><br/>
        <a href="logout.jsp">로그아웃</a>
    </body>
</html>
