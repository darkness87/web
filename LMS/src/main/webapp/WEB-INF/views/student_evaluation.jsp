<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="resources/css/student_eval.css">
    <title>학사관리시스템</title>
</head>
<!-- <style>
     section{
        margin-top: 50px;
        margin-left: 250px;
        display: inline-block;
    }
</style> -->
<body>
     <jsp:include page="student_nav.jsp"/>
    <section id="test-wrap">
        <h2 style="margin-bottom: 20px">강의 평가</h2>
        <div class="eval_title1">
            <ul>
                <li>년도 <input type="text" class="input-field1" placeholder="2018" disabled></li>
                <li>학기 <input type="text" class="input-field1" placeholder="2" disabled></li>
                <li>성명 <input type="text" class="input-field1" placeholder="노유민" disabled></li>
                <li><input type="button" id="search" value="조&nbsp;회"></li>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="eval_content1">
            <ul class="eval_content1_1">
                <li>
                    <ul>
                        <li>교과코드</li>
                        <li>교과명</li>
                        <li>학년</li>
                        <li>이수구분</li>
                        <li>학점</li>
                        <li>담당교수</li>
                        <li>수업평가</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clear"></div>
        <div id="change2-content">
            <ul class="eval_content1_2">
                <li>
                    <ul>
                        <li>0511042</li>
                        <li>웹프로그래밍</li>
                        <li>4</li>
                        <li>전필</li>
                        <li>3</li>
                        <li>김재웅</li>
                        <li><input type="button" id="test" value="강의평가"></li>
                    </ul>
                    <ul>
                        <li>0511042</li>
                        <li>웹프로그래밍</li>
                        <li>4</li>
                        <li>전필</li>
                        <li>3</li>
                        <li>김재웅</li>
                        <li><input type="button" id="test" value="강의평가"></li>
                    </ul>
                    <ul>
                        <li>0511042</li>
                        <li>웹프로그래밍</li>
                        <li>4</li>
                        <li>전필</li>
                        <li>3</li>
                        <li>김재웅</li>
                        <li><input type="button" id="test" value="강의평가"></li>
                    </ul>
                    <ul>
                        <li>0511042</li>
                        <li>웹프로그래밍</li>
                        <li>4</li>
                        <li>전필</li>
                        <li>3</li>
                        <li>김재웅</li>
                        <li><input type="button" id="test" value="강의평가"></li>
                    </ul>
                </li>
            </ul>
        </div>
    </section>
    <script src="resources/js/menu.js"></script>
    <script src="resources/js/button.js"></script>
</body>
</html>