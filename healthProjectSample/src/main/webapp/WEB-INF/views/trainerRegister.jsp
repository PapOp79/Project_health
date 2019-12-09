<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value = "utf-8"/>
   <%@ include file="include/header.jspf" %>
   <div style = "margin-left:25%">
   <h4 class="modal-title">
      <span style="color: #fe6000;">HOUGYM Trainer</span> 등록
   </h4>
   </div>
   <br>
   <form action="join-controller" name="signup"
      id="signUpForm" method="post" style="margin-bottom: 0;">
      <table
         style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%;">
           <tr>
           <td>
            <input type="text" value="2" id ="Admin" name = "Admin" hidden="true">
           </td>
            
         </tr>
         <tr>
            <td>
               <p style = "margin-left: 15%;">
                  <strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="text" name="userId" id="userId"
               class="form-control tooltipstered" maxlength="14"
               required="required" aria-required="true"
               style="margin-bottom: 25px; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder="숫자와 영어로 4-14자"></td>
         </tr>

         <tr>
            <td style="text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="password" size="17" maxlength="20"
               id="userPw" name="userPw" class="form-control tooltipstered"
               maxlength="20" required="required" aria-required="true"
               style="ime-mode: inactive; width: 30%; margin-bottom: 25px; margin-left: 15%; height: 40px; border: 1px solid #d9d9de"
               placeholder="영문과 특수문자를 포함한 최소 8자"></td>
         </tr>

         <tr>
            <td style="text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="password" size="17" maxlength="20"
               id="password_check" name="pw_check"
               class="form-control tooltipstered" maxlength="20"
               required="required" aria-required="true"
               style="ime-mode: inactive; width: 30%; margin-bottom: 25px; margin-left: 15%; height: 40px; border: 1px solid #d9d9de"
               placeholder="비밀번호가 일치해야합니다."></td>
         </tr>

         <tr>
            <td style="text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="text" name="userName" id="userName"
               class="form-control tooltipstered" maxlength="6"
               required="required" aria-required="true"
               style="margin-bottom: 25px; margin-left: 15%; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder="한글로 최대 6자"></td>
         </tr>

         <tr>
            <td style="text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="email" name="userEmail" id="userEmail"
               class="form-control tooltipstered" required="required"
               aria-required="true"
               style="margin-bottom: 25px; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder="ex) izone@produce.com"></td>
         </tr>
         
         <tr>
            <td style = "text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>나이를 입력해주세요</strong>&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userAge" id = "userAge"
               class = "form-control tooltipstered" required = "required"
               aria-required = "true"
               style = "margin-bottom: 25px; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder = "나이는 만 **세로 계산, 숫자만 입력"></td>
         </tr>
         
         
         <tr>
            <td style = "text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>키를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userHeight" id = "userHeight"
               class = "form-control tooltipstered" required = "required"
               aria-required = "true"
               style = "margin-bottom: 25px; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder = "소수점은 반올림"></td>
         </tr>
         
         <tr>
            <td style = "text-align: left">
               <p style = "margin-left: 15%;">
                  <strong>몸무게를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userWeight" id = "userWeight"
               class = "form-control tooltipstered" required = "required"
               aria-required = "true"
               style = "margin-bottom: 25px; margin-left: 15%; width: 30%; height: 40px; border: 1px solid #d9d9de"
               placeholder = "소수점은 반올림"></td>
         </tr>
         
         <tr>
            <td><p style = "margin-left: 15%;"><strong>남&nbsp;&nbsp;</strong><input type = "radio" 
               name = "userSex" id = "userSex" value = "male"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "true" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>여&nbsp;&nbsp;</strong><input type = "radio" name = "userSex" id = "userSex" value = "female"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "treu"></p></td>
         </tr>
         
         <tr>
            <td style="padding-top: 10px; text-align: center">
               <p>
                  <strong>HOUGYM Trainer 등록</strong>
               </p>
            </td>
         </tr>

         <tr>
            <td style="width: 100%; text-align: center; colspan: 2;"><input
               type="submit" value="트레이너 등록" class="btn form-control tooltipstered"
               id="signup-btn"
               style="background-color: #fe6000; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
            </td>
         </tr>
      </table>
   </form>
   <%@ include file="include/footer.jspf" %>
</body>
</html>