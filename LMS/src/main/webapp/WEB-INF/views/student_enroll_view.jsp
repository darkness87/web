<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/js/jquery-ui.css">
    <link rel="stylesheet" href="resources/css/enroll_search.css">
    <title>수강신청</title>
    <script>
        $( function() {
            $( "#tabs" ).tabs();
        });
    </script>
</head>
<body>
    <nav>
        <div id="logo1">
            <img src="resources/images/logo1.png">
        </div>
        <div id="mainMenu">
            <table class="type09">
                <thead>
                <tr>
                    <th scope="cols" colspan="2">2019년도 2학기 수강신청</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">대학</th>
                    <td>휴먼대학교</td>
                </tr>
                <tr>
                    <th scope="row">학과</th>
                    <td>컴퓨터공학과</td>
                </tr>
                <tr>
                    <th scope="row">학번</th>
                    <td>201505117</td>
                </tr>
                <tr>
                    <th scope="row">성명</th>
                    <td>${userName}</td>
                </tr>
                <tr>
                    <th scope="row">신청가능학점</th>
                    <td>21 학점</td>
                </tr>
                </tbody>
            </table>
        </div>
    </nav>
    <section>
        <header>
            <div class="container">
                <ul id="documents" class="nav">
                    <li><a href="/finalpjt/student_enroll_main">공지사항</a></li>
                    <li><a href="/finalpjt/student_enroll_view">조회</a> </li>
                    <li><a href="/finalpjt/student_enroll_apply">수강신청</a> </li>
                </ul>
            </div>
        </header>
        <div class="clear"></div>
        <div id="tabs">
            <div class="tab-wrap">
                <ul>
                    <li><a href="#tabs-1">개설과목조회</a></li>
                    <li><a href="#tabs-2">수강신청</a></li>
                    <li><a href="#tabs-3">나의 이수내역</a></li>
                </ul>
                <div id="tabs-1">
                    <div id="tab1">
                        ▶ 이수구분 <select name="" id="completion">
                            <option value="전공">전공</option>
                            <option value="교양">교양</option>
                        </select>
                        ▶ 대상학년 <select name="" id="grade">
                            <option value="1">1학년</option>
                            <option value="2">2학년</option>
                            <option value="3">3학년</option>
                            <option value="4">4학년</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▶ 과목명 <input type="text" placeholder="검색어 입력">
                        <button type="submit"></button>
                    </div>
                    <div id="tab1">
                        <div class="nameselect">
                            <fieldset id="fi1">
                                <legend>개설과목조회 [총 조회건수: ?건]</legend>
                                        <ul id='enroll-title'>
                                            <li>
                                                <ul>
                                                    <li class="enroll_title_1">과목코드</li>
	                                                <li class="enroll_title_2">이수구분</li>
	                                                <li class="enroll_title_3">개설학과</li>
	                                                <li class="enroll_title_4">과목명</li>
	                                                <li class="enroll_title_5">학점</li>
	                                                <li class="enroll_title_6">교수명</li>
	                                                <li class="enroll_title_7">대상학년</li>
	                                                <li class="enroll_title_8">수강인원</li>
	                                                <li class="enroll_title_9">시간표</li>
	                                                <li class="enroll_title_10">강의실</li>
	                                                <li class="enroll_title_11">강의계획서</li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <div class='clear'></div>
                                        <div id="enroll-search">
                                            <ul id="content01">
                                                <li>
                                                    <ul>
                                                        <li class="enroll_title_1">0511042</li>
	                                                    <li class="enroll_title_2">전필</li>
	                                                    <li class="enroll_title_3">컴퓨터공학과</li>
	                                                    <li class="enroll_title_4">소프트웨어개발방법론</li>
	                                                    <li class="enroll_title_5">3</li>
	                                                    <li class="enroll_title_6">김재웅</li>
	                                                    <li class="enroll_title_7">4</li>
	                                                    <li class="enroll_title_8">15/15</li>
	                                                    <li class="enroll_title_9">8공 815</li>
	                                                    <li class="enroll_title_10">목7 목8 목9</li>
	                                                    <li class="enroll_title_11"><input type="button" id="plan" value="강의계획서"></li>
                                                    </ul>
                                                </li>
                                                <div class='clear'></div>
                                            </ul>
                                        </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div><!--1번탭-->
            <div id="tabs-2">
                <fieldset id="fi1">
                    <legend>수강신청 내역[수강신청가능학점: 21학점 | 총 신청학점: ?학점 | 신청과목수: ? 과목]</legend>
                            <ul id='board1'>
                                <li>
                                    <ul>
                                        <li> 이수구분 </li>
                                        <li> 과목코드 </li>
                                        <li> 과목명 </li>
                                        <li> 학점 </li>
                                        <li> 신청인원 </li>
                                        <li> 교수명 </li>
                                        <li> 대상학년 </li>
                                        <li> 강의실 </li>
                                        <li> 시간표 </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class='clear'></div>
                            <div id="enroll-insert">
                                <ul id="content02">
                                    <li>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                        <ul>
                                            <li>전필</li>
                                            <li>1001057</li>
                                            <li>소프트웨어개발방법론</li>
                                            <li>3</li>
                                            <li>15/15</li>
                                            <li>김재웅</li>
                                            <li>4</li>
                                            <li>8공814</li>
                                            <li>목7 목8 목9</li>
                                        </ul>
                                    </li>
                                    <div class='clear'></div>
                                </ul>
                            </div>
                </fieldset>
            </div> <!--2번탭-->
            <div id="tabs-3">
                <fieldset id="fi1">
                    <legend>나의 이수내역</legend>
		                <ul id='board2'>
		                    <li>
		                        <ul>
		                            <li> 취득시기 </li>
		                            <li> 과목코드 </li>
		                            <li> 과목명 </li>
		                            <li> 이수구분 </li>
		                            <li> 학년 </li>
		                            <li> 학점 </li>
		                            <li> 점수 </li>
		                            <li> 평점 </li>
		                        </ul>
		                    </li>
		                </ul>
		                <div class='clear'></div>
		                <div id="enroll-mypage">
		                    <ul id="content03">
		                        <li>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                            <ul>
		                                <li>2018/4</li>
		                                <li>1001057</li>
		                                <li>소프트웨어개발방법론</li>
		                                <li>전공필수</li>
		                                <li>3</li>
		                                <li>3</li>
		                                <li>85</li>
		                                <li>A+</li>
		                            </ul>
		                        </li>
		                        <div class='clear'></div>
		                    </ul>
		                </div>
                </fieldset>
            </div> <!--3번 탭-->
        </div>
    </section>
</body>
</html>