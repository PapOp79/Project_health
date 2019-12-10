<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  -->


<script type="text/javascript">





var num= pageContext.getAttribute("change");

function startpage(){
	${pageContext.setAttribute("change", "front")};
	
	alert("${pageContext.getAttribute('change')}");
	console.log("${pageContext.getAttribute('change')}");
}

function change(){
	if("${pageContext.getAttribute('change')}"=="front"){
		${pageContext.setAttribute("change", "back")};
	}else{
		${pageContext.setAttribute("change", "front")};
	}
	
}


</script>


<body onload='startpage()'>
<%@ include file="include/header.jspf"%>





<style type="text/css">

img[usemap] {

		border: none;

		height: auto;

		max-width: 100%;

		width: auto;

	}




@FONT-FACE{
font-family:'Dohyun';
src:url(resources/static/font/Dohyun.ttf)
}

body{

width:100vw;
background-color:black;
background-repeat: no-repeat;
background-position: left;
background-size:cover;


}
</style>

<p style="font-family: Dohyun;color:white;size:6;margin-left: 20px;margin-top: 20px;">
<font size="5">운동방법 페이지</font>
</p>

<c:set var="aaa" value="앞">

</c:set>

<div align="center" style="position: relative;" >

	<button onclick="change()">전환</button>
		<div width="160px" height="500px" align="center" style="position: relative;">
		<% String num =request.getParameter("num");
		if(num =="front"){ %>
			<img src="resources/static/img/앞모습.bmp" style="max-width:100%;" 
				usemap="#aaa" alt="앞모습">
			</div>
			<map name="aaa">
				<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
					data-target="#myModal" style="position: fixed;">
				<area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
					data-target="#myModal1" style="position: fixed;">
			</map>
			<%}else{ %>
				<img src="resources/static/img/뒷모습.bmp" style="max-width:100%;" 
				usemap="#aaa" alt="앞모습">
			</div>
			<map name="aaa">
				<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
					data-target="#myModal" style="position: fixed;">
				<area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
					data-target="#myModal1" style="position: fixed;">
			</map>
 			<%} %>
</div>
</body>
<!-- 모달 영역 -->
<!-- 앞모습  -->
<!--  -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">팔</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.youtube.com/embed/ofO6_Fc6KjM"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

<!--  -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">다리</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.youtube.com/embed/fkpkqWbGdKs"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

<!-- 뒷모습  -->
<!--  -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">뒷다리</h4>
			</div>
			<div class="modal-body">뒷 다리</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

<!--  -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">뒷 팔</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">뒷 팔</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>
   <div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
   </div>


</div>
