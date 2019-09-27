<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/student_info.css">
    <title>학사관리시스템</title>
</head>
<body>
     <jsp:include page="student_nav.jsp"/>
    <section>
        <input type="button" id="save" value="저장">
        <fieldset id="info1">
            <legend id="info_title">기본인적사항</legend>
                <div id="uploadFile">
                    <label for="upload" title="Upload photo"  class="camera"></label>
                    <label for="upload" ><img  id="imageReader"></label>
                    <input  type="file" name="file"  required id="upload">
                </div>
                <div id="submain">
                    <div id="join1">
                        <ul>
                            <li class="input-icons1">이름</li>
                            <li class="input-icons1">대학</li>
                            <li class="input-icons1">생년월일</li>
                            <li class="input-icons1">성별</li>
                            <li class="input-icons1">국적</li>
                            <li class="input-icons1">주소</li>
                        </ul>
                    </div>
                    <div id="join1_1">
                        <ul>
                            <li class="input-icons">
                                <i class="fas fa-user"></i>
                                <input type="text" class="input-field" name="s_name">
                            </li>
                            <li class="input-icons">
                                <i class="fas fa-graduation-cap"></i>
                                <input type="text" class="input-field" name="s_univirsty">
                            </li>
                            <li class="input-icons">
                                <i class="fas fa-birthday-cake"></i>
                                <input type="text" class="input-field" name="s_birth">
                            </li>
                            <li class="input-icons">
                                <input type="radio" class="input-field" id="gen" name="s_gender" checked>남&nbsp;
                                <input type="radio" class="input-field" id="gen1" name="s_gender">여
                            </li>
                            <li class="input-icons">
                                <i class="fas fa-globe-asia"></i>
                                <input type="text" class="input-field" name="s_nara">
                            </li>
                            <li class="input-icons">
                                <i class="fas fa-globe-asia" id="addricon"></i>
                                <input type="text" class="input-field" id="addr" name="s_address">
                            </li>
                        </ul>
                    </div>
                    <div id="join2">
                        <ul>
                            <li class="input-icons2">학번</li>
                            <li class="input-icons2">학과</li>
                            <li class="input-icons2">학년</li>
                            <li class="input-icons2">학적상태</li>
                        </ul>
                    </div>
                    <div id="join2_1">
                        <ul>
                            <li class="input-icons">
                                <i class="fas fa-address-card"></i>
                                <input type="text" class="input-field" name="s_name">
                            </li>
                            <li class="input-icons">
                                <select name="" id="depart">
                                    <option value="1">학과명</option>
                                    <option value="2">학과명</option>
                                    <option value="3">학과명</option>
                                    <option value="4">학과명</option>
                                    <option value="5">학과명</option>
                                </select>
                            </li>
                            <li class="input-icons">
                                <select name="" id="grade">
                                    <option value="1">1학년</option>
                                    <option value="2">2학년</option>
                                    <option value="3">3학년</option>
                                    <option value="4">4학년</option>
                                </select>
                            </li>
                            <li class="input-icons">
                                <i class="fas fa-user"></i>
                                <input type="text" class="input-field" name="s_gender">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset id="info2">
            <legend id="info_title">학적변동사항</legend>
            <div id="change1">
                <ul id="board5">
                    <li>
                        <ul>
                            <li>년도</li>
                            <li>학기</li>
                            <li>일자</li>
                            <li>구분</li>
                            <li>상세내용</li>
                            <li>승인과정</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
            <div id="change1-content">
                <ul id="board5-content">
                    <li>
                        <ul>
                            <li>2018</li>
                            <li>2</li>
                            <li>2019-02-21</li>
                            <li>졸업</li>
                            <li>졸업</li>
                            <li>승인</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2</li>
                            <li>2019-02-21</li>
                            <li>졸업</li>
                            <li>졸업</li>
                            <li>승인</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2</li>
                            <li>2019-02-21</li>
                            <li>졸업</li>
                            <li>졸업</li>
                            <li>승인</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2</li>
                            <li>2019-02-21</li>
                            <li>졸업</li>
                            <li>졸업</li>
                            <li>승인</li>
                        </ul>
                        <ul>
                            <li>2018</li>
                            <li>2</li>
                            <li>2019-02-21</li>
                            <li>졸업</li>
                            <li>졸업</li>
                            <li>승인</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </fieldset>
    </section>
    <script src="resources/js/menu.js"></script>
    <script src="resources/js/upload.js"></script>
</body>
</html>