<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%
    // 로그인 정보 설정
    String userID="admin";
    String userPWD="123";
    String userName="ADMIN";
   
    // login.jsp로부터 form data를 받는다
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
   
    // id, pwd가 맞을 경우 실행
    if(userID.equals(id) && userPWD.equals(pwd))
    {
        session.setAttribute("s_Name",userName);
        session.setAttribute("s_Id", userID);
        response.sendRedirect("./main.jsp"); // main.jsp 에 session 정보를 보낸다
    }
    else
    {
    	out.println("<script>alert('비밀번호가 틀렸습니다.'); document.location.href= 'loginProc.jsp' </script>");
    	
    }
%>

