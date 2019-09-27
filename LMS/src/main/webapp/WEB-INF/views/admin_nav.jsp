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
            <button class="accordion">게시판 관리</button>
            <ul> 
                <li><a href="#">공지사항</a></li>
                <li><a href="/finalpjt/admin_schedule">학사일정</a></li> 
            </ul>
            <button class="accordion">수업 관리</button>
            <ul> 
                <li><a href="#">강의 계획서 폼</a></li>
                <li><a href="#">강의평가 폼</a></li> 
            </ul>
            <!-- <button class="accordion accordion-x">졸업관련</button> -->
            <button class="accordion accordion-x">휴/복학 승인</button>
            <button class="accordion" onclick="location='admin_stinfo'">학생/교직원 등록</button>
        </div>   
    </nav>