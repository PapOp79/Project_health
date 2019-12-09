<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="background-color:black;">
<%@ include file="include/header.jspf"%>


<c:set var="aaa" value="앞">

</c:set>

<div align="center" style="position: relative;" >

	<c:choose>
		<c:when test="${aaa eq '앞'}">
			<img src="resources/static/img/앞모습.bmp" style="max-width: 15%;"
				usemap="#aaa" alt="앞모습">
			<map name="aaa">
				<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
					data-target="#myModal" style="position: fixed;">
				<area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
					data-target="#myModal1" style="position: fixed;">
			</map>
		</c:when>
		<c:when test="${bbb eq '뒤'}">
			<img src="resources/static/img/뒷모습.bmp" style="max-width: 15%;"
				usemap="#aaa" alt="뒷모습">
			<map name="aaa">
				<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
					data-target="#myModal3" style="position: fixed;">
				<area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
					data-target="#myModal4" style="position: fixed;">
			</map>
		</c:when>
	</c:choose>

</div>

<!-- 모달 영역 -->
<!-- 앞모습  -->
<!--  -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">모달 타이틀</h4>
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
				<h4 class="modal-title" id="myModalLabel">팔</h4>
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
   <%@ include file="include/footer.jspf" %>


</div>