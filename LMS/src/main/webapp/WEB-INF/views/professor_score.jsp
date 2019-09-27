<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
	<jsp:include page="professor_nav.jsp" />
	<form action="p_score" method="POST">
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
					<li><input type="button" id="search" value="성적입력" onclick="javascript:popup()"></li>
					<%-- <li>수업일시 <input type="text" class="input-field1"
						value="${se.con_sum}" disabled></li>
					<li id="t_room">강의실 <input type="text" class="input-field1"
						value="${se.t_room}" disabled></li> --%>
					<!-- <li><input type="button" id="search" value="조&nbsp;회" onclick="p_score"></li> -->
				</ul>
			</div>
			<div class="clear"></div>
			<div class="pscore_content1">
				<ul class="pscore_content1_1_1">
					<li>
						<ul>
							<li>학번</li>
							<li>이름</li>
							<li>과목명</li>
							<li>학과명</li>
							<!-- <li>성적입력</li> -->
						</ul>
					</li>
				</ul>
			</div>
			<div id="change4-content">
				<ul class="pscore_content1_2_1">
					<li><c:forEach items="${ps}" var="borad">
							<ul>
								<li id="s_id">${borad.s_id}</li>
								<li id="s_name">${borad.s_name}</li>
								<li id="c_name">${borad.c_name}</li>
								<li id="s_major">${borad.s_major}</li>
								<%-- <li><input type="button" class="test" value="성적입력" bid="${borad.s_id}" bname="${borad.s_name}" bcname="${borad.c_name}" bmajor="${borad.s_major}"></li> --%>
							</ul>
						</c:forEach></li>
				</ul>
			</div>
		</section>
		<script>
		function popup(){
			var url = "p_scoreinput?p_id=${p_id}";
			console.log(url);
			var name = "popup";
			window.open(url,name,"width=1795,height=760,location=no,status=no,scrollbars=yes");
		}
		/* 	$(document).on('click', '#test', function() {
				var curTr = $(this).parent().parent();
				var row1 = curTr.index(); //ul[index]
				var curTd = $(this).parent(); //li[index]
				var row2 = curTd.index();
				

				console.log("row1 : " + row1);
				console.log("row2 : " + row2);
				var oParam = {
					s_id : curTr.find('li:eq(0)').text(),
					s_name : curTr.find('li:eq(1)').text(),
					c_name : curTr.find('li:eq(2)').text(),
					s_major : curTr.find('li:eq(3)').text()
				};
				$.post('/insert.do', oParam, function() {
					alert("성적입력 완료");

				}, 'text').fail(function() {
					alert("error");
				});

			}) */
			/* $("#test").each(function(){ */
			      /* $(".test").click(function(){
			    	  var bid = $(this).attr("bid"); // 책 번호
				      var bname = $(this).attr("bname");
				      var bcname = $(this).attr("bcname");
				      var bmajor = $(this).attr("bmajor");	
				         
				      console.log("bid" + bid);
				      console.log("bid" + bname);
				      console.log("bid" + bcname);
				      console.log("bid" + bmajor);
			    	  var oParam = {
			    		s_id : bid,
			    		s_name : bname,
			    		c_name : bcname,
			    		s_major : bmajor
			    			  
			    	  }
			    	  console.log(oParam);
			     	$.post('insert.do', oParam, function() {
						alert("성적입력 완료");

					}, 'text').fail(function() {
						alert("error");
					});
			      }) */
			  /*  }) */

			var acc = document.getElementsByClassName("accordion");
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