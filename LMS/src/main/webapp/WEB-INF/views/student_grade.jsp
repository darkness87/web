<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <link rel="stylesheet" href="resources/css/student_grade.css">
    <title>학사관리시스템</title>
<!--     <style>
        #sinfo{
            padding: 10px;
            width: 800px;
            border: 1px solid black;
            background-color: #ddd;
        }
    </style> -->
</head>
<body>
    <jsp:include page="student_nav.jsp"/>
    <div class="clear"></div>
    <section id="grade-wrap">
        <div id="grade-wrap-content">
            <h2>|학기별 성적조회</h2>
            <ul id="grade-title">
                <li>
                    <ul>
                        <li>
                            년도 
                            <select id="year">
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                            </select>
                        </li>
                        <li>
                            학기 
                            <select id="grade">
                                <option value="1">1학기</option>
                                <option value="2">2학기</option>
                            </select>
                        </li>
                        <li><input type="button" id="search" value="조&nbsp;회" ></li>
                    </ul>
                </li>
            </ul>
            <div class="clear"></div>
            <div class="grade_content1">
                <ul class="grade_content1_1">
                    <li>
                        <ul>
                            <li>년도</li>
                            <li>학기</li>
                            <li>학년</li>
                            <li>이수구분</li>
                            <li>과목코드</li>
                            <li>과목명</li>
                            <li>학점</li>
                            <li>등급</li>
                            <li>평점</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
            <div id="change3-content">
                <ul class="grade_content1_2">
                    <li>
                        <ul>
                            <li>2018</li>
                            <li>2학기</li>
                            <li>4</li>
                            <li>전필</li>
                            <li>0511042</li>
                            <li>웹프로그래밍</li>
                            <li>3</li>
                            <li>A+</li>
                            <li>4.5</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2학기</li>
                            <li>4</li>
                            <li>전필</li>
                            <li>0511042</li>
                            <li>웹프로그래밍</li>
                            <li>3</li>
                            <li>A+</li>
                            <li>4.5</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2학기</li>
                            <li>4</li>
                            <li>전필</li>
                            <li>0511042</li>
                            <li>웹프로그래밍</li>
                            <li>3</li>
                            <li>A+</li>
                            <li>4.5</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2학기</li>
                            <li>4</li>
                            <li>전필</li>
                            <li>0511042</li>
                            <li>웹프로그래밍</li>
                            <li>3</li>
                            <li>A+</li>
                            <li>4.5</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
            <br><h2>|전체 성적조회</h2>
            <div id="grade-wrap1">
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </section>
    <script src="resources/js/menu.js"></script>
    <script src="resources/js/button.js"></script>
    <script src="resources/js/graph.js"></script>   
</body>
</html>