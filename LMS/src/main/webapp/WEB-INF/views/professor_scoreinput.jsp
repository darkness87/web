<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String p_id = (String) session.getAttribute("p_id");
%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="resources/js/jquery-ui.css">
<link rel="stylesheet" href="resources/css/pf_score.css">
<title>학사관리시스템</title>
</head>
<body>
	<form action="p_scoreinput" method="GET">
		<section id="grade-insert">
			<h2 style="margin-bottom: 20px">성적입력</h2>
			<div class="eval_title1">
				<ul>
					<li>과목명 <input type="text" class="input-field1"
						value="${se.c_name}" disabled></li>
					<li>과목코드 <input type="text" class="input-field1"
						value="${se.c_id}" disabled></li>
					<li>학기 <input type="text" class="input-field1"
						value="${se.t_semester}" disabled></li>
					<li><input type="button" id="search" value="조&nbsp;회" /></li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="pscore_content1">
				<ul class="pscore_content1_1">
					<li>
						<ul>
							<li>학번</li>
							<li>이름</li>
							<li>과목명</li>
							<li>학과명</li>
							<li>점수</li>
							<li>등급</li>
							<li>평점</li>
							<li></li>
						</ul>
					</li>
				</ul>
			</div>
			<div id="change4-content-1">
				<ul class="pscore_content1_2">
					<li>
						<c:forEach items="${ps}" var="borad">
							<ul>
								<li id="s_id">${borad.s_id}</li>
								<li id="s_name">${borad.s_name}</li>
								<li id="c_name">${borad.c_name}</li>
								<li id="s_major">${borad.s_major}</li>
								<li><input type="text" id="numtxt" name="s_num" class="${borad.s_id}"></li>
								<!--실질 점수(85/100) 100점기준으로-->
								<li><input type="text" class="alphatxt" name="s_alpha" id="${borad.s_id}" readonly></li>
								<li><input type="text" id="avgtxt"></li>
								<li>
									<input type="button" id="insertBTN" class="test" value="성적입력"
									bid="${borad.s_id}" bname="${borad.s_name}"
									bcname="${borad.c_name}" bmajor="${borad.s_major}"
									tsemester="${se.t_semester}" cmajor="${se.c_major}">&nbsp;&nbsp;
									<input type="button" id="updateBTN" class="Update" value="수정" b_id="${borad.s_id}">
								</li>
								<!--stcmajor =전공  -->
							</ul>
						</c:forEach>
					</li>
				</ul>
			</div>
		</section>
		<script>
			<c:forEach var= "items1"  items="${ps}">
				var s_sum = null;
				var a_lpha = null;
				var s_id = null;
				$(document).on('blur', '.${items1.s_id}', function() {
					if ($('.${items1.s_id}').val() == 100) {
						$('#${items1.s_id}').val('A');
					} else if ($('.${items1.s_id}').val() == 90) {
						$('#${items1.s_id}').val('B');
					}
					s_sum = $('.${items1.s_id}').val();
					a_lpha = $('#${items1.s_id}').val();
				})
			</c:forEach>
			$(".Update").click(function() {
				var s_id = $(this).attr("b_id");
				var obj = {};
				obj['ssum'] = s_sum;
				obj['alpha'] = a_lpha;
				obj['s_id'] = s_id;
				console.log("obj : " + obj['ssum']);
				console.log("obj : " + obj['alpha']);
				console.log("obj : " + obj['s_id']);
				$.get('Update', obj, function(txt) {
					alert("수정완료");
				}, 'text').fail(function() {
					alert("수정 실패");
				});
			})

			$(".test").click(function() {
				var today = new Date();
				var n_year = today.getFullYear();
				var ssum = s_sum;
				var alpha = a_lpha;
				var bid = $(this).attr("bid"); // 책 번호
				var bname = $(this).attr("bname");
				var bcname = $(this).attr("bcname");
				var bmajor = $(this).attr("bmajor");
				var tsemester = $(this).attr("tsemester");
				var cmajor = $(this).attr("cmajor");
				/*  var ssum = $(this).attr("s_sum"); */

				var oParam = {}
				console.log(oParam);
				$.post('insert.do', oParam, function() {
					alert("성적입력 완료");

				}, 'text').fail(function() {
					alert("error");
				});
			})

			var acc = document.getElementsByClassName("accordion");
			var i;

			for (i = 0; i < acc.length; i++) {
				acc[i].addEventListener("click", function() {
					this.classList.toggle("active");
					var panel = this.nextElementSibling;
					if (panel.style.maxHeight) {
						panel.style.maxHeight = null;
					} else {
						panel.style.maxHeight = panel.scrollHeight + "px";
					}
				});
			}
		</script>
		<script src="resources/js/button.js"></script>
	</form>
</body>
</html>