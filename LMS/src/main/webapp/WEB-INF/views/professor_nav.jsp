<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String p_id = (String)session.getAttribute("userName");
    %>
 <nav>
     <div id="logo">
         <img src="resources/images/logo.png">
     </div>
     <div id="logged">
         <div class="log_title">
             <p id="welcome"><b>${userName}</b>님 <br>환영합니다</p>
         </div>
         <div class="log_content">
             <input type="button" id="logout" value="로그아웃" onclick="location.href='/finalpjt/logout'">
         </div>
     </div>
     <div id="mainMenu">
     	<input type="text" value=<%=p_id%>>
         <button class="accordion">학생정보</button>
         <ul> 
             <li><a href="#">학생정보조회</a></li>
         </ul>
         <button class="accordion">성적관리</button>
         <ul>
             <li><a href="p_score?p_id=${p_id}">성적입력</a></li>
         </ul>
         <button class="accordion">수업관리</button>
         <ul>
             <li><a href="#">강의계획서 등록</a></li>
             <li><a href="#">결보강신청</a></li>
         </ul>
         <button class="accordion">출결관리</button>
         <ul>
             <li><a href="#">출결관리</a></li>
             <li><a href="#">출석부</a></li>
         </ul>
         
     </div>   
 </nav>