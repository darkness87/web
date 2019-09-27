<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
           <button class="accordion">학적/졸업</button>
           <ul> 
               <li><a href="/finalpjt/student_info">학적정보조회</a></li>
               <li><a href="/finalpjt/student_last">졸업정보조회</a></li> 
           </ul>
           <button class="accordion">수업/성적</button>
           <ul>
               <li><a href="/finalpjt/student_timetable">시간표</a></li>
               <li><a href="/finalpjt/student_evaluation">강의평가</a></li>
               <li><a href="/finalpjt/student_grade">성적조회</a></li>
           </ul>
           <button class="accordion accordion-x" onclick="location='student_enroll_main'">수강신청</button>
       </div>   
   </nav>