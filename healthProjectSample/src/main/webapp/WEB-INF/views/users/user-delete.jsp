

<%@page import="com.jsp.izone.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %>

<%
	/*
		1. mypage-delete-check에서 전달된 패스워드를 확인한 후 일치한다면 
		아래의 [예] [아니오] 버튼을 보여주고
		2. 패스워드가 틀렸다면 다시 패스워드 입력창으로 돌아가게 구현하세요.
		3. [아니오] 버튼을 누른다면 다시 전페이지로 이동.
		4. [예] 버튼을 누른다면 DB에서 데이터를 삭제하도록 구현하세요.
		
	*/	
%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	//비밀번호 맞는지 검사
	String pw = request.getParameter("chkPw");
	
	MemberDAO dao = MemberDAO.getInstance();
	String dbPw = dao.getMemberInfo(id).getUserPw();	
%>

<style>
header.masthead {
	
	display: none;
}	
</style>

<br/><br/>
<div class="row">
<div class="col-md-3"></div>

<div class="col-md-6">

<ul class="nav nav-tabs nav-justified">
   <li class="nav-item" ><a class="nav-link" href="/izone/users/mypage-change-pw.jsp" style="font-size: 20px;"><strong>비밀번호 변경</strong></a></li>
   <li class="nav-item"><a class="nav-link" href="/izone/users/mypage-user-update.jsp" style="font-size: 20px;"><strong>회원정보 수정</strong></a></li>
   <li class="nav-item"><a class="nav-link active" href="/izone/users/mypage-delete-check.jsp" style="font-size: 20px;"><strong>회원 탈퇴하기</strong></a></li>
   
</ul>
<br/><br/>

<h4 style="color: #ff52a0;">회원 탈퇴 페이지</h4><hr/><br/>

<div align="center">

	
	<% if(dbPw.equals(pw)) { %>
		<h4><%= name %>(<%= id %>)님 정말로 회원정보를 삭제하시겠습니까?</h4>
		
		<a class="btn" href="/izone/users/user-delete-controller.jsp"
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">예</a>&nbsp;&nbsp;
		<a class="btn btn-danger" href="/izone/users/mypage-delete-check.jsp"
		style="margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">아니오</a>
	<% } else { %>
		<script>
			alert("비밀번호를 다시 확인해주세요.")
			history.back();
		</script>
	<% } %>
	

</div>
</div>
<div class="col-md-3"></div>
</div>

<br/><br/>


<%@ include file="../include/footer.jspf" %>