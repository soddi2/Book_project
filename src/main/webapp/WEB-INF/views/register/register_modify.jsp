<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>로그인 / 회원가입 폼 템플릿</title>
        <link rel="stylesheet" href="/assets/css/register_modify.css">
        <link rel="icon" type="image/png" href="/assets/bookico_bk.ico">
        
        <!-- jquery,jquery-validate : 순서 중요, 둘이 세트 -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
        
        <!-- alert창 띄우기 -->
		<script> 
		   	let msg = '${info}';
		   	console.log(msg);
		   	if(msg !== ''){
		   		alert(msg);
		   	}
		   	
		   	let msg2 = '${error}';
		   	console.log(msg2);
		   	if(msg != ''){
		   		alert(msg2);
		   	}
		</script>

    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LEAVE</button>
                    <button type="button" class="togglebtn" onclick="register()">MODIFY</button>
                </div>
                
                <div class="social-icons">
                    <img src="/assets/images/fb.png" alt="facebook">
                    <img src="/assets/images/tw.png" alt="twitter">
                    <img src="/assets/images/gl.png" alt="google">
                </div>
                
                <form id="leave" method="post" action="leave" class="input-group">
                    <input type="text" class="input-field" name="userid" placeholder="아이디를 입력하세요" value="${auth.userid}" required>
                    <input type="password" name="password" class="input-field" placeholder="현재 비밀번호를 입력해주세요" required>
                    <input type="password" class="input-field" name="currentPassword" placeholder="비밀번호를 확인해주세요" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">LEAVE</button>
                </form>
                
                <form id="modify" method="post" action="modify" class="input-group">
                    <input type="password" name="currentPassword" id="password" class="input-field" placeholder="현재 비밀번호를 입력해주세요" required>
                    <input type="password" name="password" class="input-field" placeholder="새 비밀번호를 입력해주세요" required>
                    <input type="email" name="email" class="input-field" placeholder="이메일을 수정해주세요." required>
                    <input type="text" name="address" class="input-field" placeholder="주소를 수정해주세요." required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <button class="submit">MODIFY</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("leave");
            var y = document.getElementById("modify");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
        
        <script>
        $("#password").on("change",function(){

        	console.log($("#password").val());
        	//폼안에 데이터를 json 형태로 서버로 보내기
        	//입력 후 결과를 받아 출력하기
        	$.ajax({
        		url : 'dupPWD',
        		type : 'get',
        		data :  {
        			password : $("#password").val(),
        			currentPassword	: $("#password").val()	 
        		},
        		success:function(data){ 
        			if(data==='fail'){
        				alert("비밀번호를 확인해 주세요.")
        			}
        		},
        		error:function(xhr,txtStatus,error){ 
        			alert(xhr.responseText);
        			}
        		})
        	})
        </script>
    </body>
</html>






















