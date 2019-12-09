<%@page import="com.health.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("userId");
	userDAO dao = userDAO.getInstance();
	boolean flag = dao.isDuplicateId(id);
	
	if(flag) { //아이디 중복됨
		out.print("YES"); //통신 결과를 문자열로 전달
	} else { //아이디 중복 X 
		out.print("NO");		
	}
%>