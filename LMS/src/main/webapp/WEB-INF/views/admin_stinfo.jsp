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
    <jsp:include page="admin_nav.jsp"/>
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
                                <input type="text" class="input-field" name="s_name" id="getVal">
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
        </fieldset>
    </section>
<script>
        /* var acc = document.getElementsByClassName("accordion");
        var i;
        
        for (i = 0; i < 2; i++) {
          acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight){
              panel.style.maxHeight = null;
            } else {
              panel.style.maxHeight = panel.scrollHeight + "px";
            } 
          });
        } */
        $(document).on('click','#save',function(){
           console.log("check check 3");
           enterVal();
           //$('#getVal').val(year+'0'+department);
        })
        function enterVal(){
           var department=$('#depart option:selected').val();
           var today = new Date();
           var year = today.getFullYear();
           var obj={};
           console.log("check check 1");
           obj['sdepartment'] = department; // 학과 오브젝트
           console.log("depart check : "+obj['sdepartment'])
           obj['year'] = year;   // 연도 오브젝트
           console.log("year check :"+ obj['year']);
           $.get('admin_stinfo1',obj,function(txt){
              console.log("txt ["+txt+"]");
              $('#getVal').val(txt);
              console.log("txt :"+txt);
           },'text');
           
           //$.ajax({
             // url: '/admin_stinfo',
             //  data:{   sdepartment : $('#depart option:selected').val(),
             //           years : year
             //  },
             //  type: 'POST',
             //  success:function(data){
             //      console.log("check check 2");
               //       $('#getVal').val(year+$('#depart option:selected').val()+data);
             //     console.log("txt :"+data);
             //  },
             //  error:function(){
             //     alert("error");
             //  }
             //});
        }
        
    </script>
	<script src="resources/js/menu.js"></script>   
    <script src="resources/js/upload.js"></script>
</body>
</html>