<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>로그인 / 회원가입</title>
        <link rel="stylesheet" href="/assets/css/register_style.css">
        <link rel="icon" type="image/png" href="/assets/bookico_bk.ico">
        <!-- Bootstrap CSS -->

		<!-- jquery,jquery-validate : 순서 중요, 둘이 세트 -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>   
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	    <!-- validation 사용자 작성 코드 삽입-->
	    <!-- <script src="/assets/validation/join.js"></script> -->
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                
                <div class="social-icons">
                    <img src="/assets/images/fb.png" alt="facebook">
                    <img src="/assets/images/tw.png" alt="twitter">
                    <img src="/assets/images/gl.png" alt="google">
                </div>
                
                <form id="login" method="post" action="login" class="input-group">
                    <input type="text" class="input-field" name="userid" placeholder="아이디를 입력하세요" required>
                    <input type="password" class="input-field" name="password" placeholder="비밀번호를 입력하세요" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password <a href="" id="forgetPwd">Forget Password ?</a></span>
                    <button id="loginBtn" class="submit">Login</button>
                </form>
                
                  <!--  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">모달창 열기</button> -->
                
                <form id="register" method="post" action="" class="input-group">
                    <input type="text" name="userid" id="userid" class="input-field" placeholder="아이디를 입력해주세요." value="${vo.userid}" required>
                    <input type="password" name="password" class="input-field" placeholder="비밀번호를 입력해주세요." required>
                    <input type="email" name="email" class="input-field" placeholder="이메일을 입력해주세요." value="${vo.email}" required>
                    <input type="text" name="address" class="input-field" placeholder="주소를 입력해주세요." value="${vo.address}" required>
                    <input type="text" name="address" class="input-field" placeholder="전화번호를 입력해주세요." value="${vo.mobile}" required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <button class="submit" class="btn btn-primary">REGISTER</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
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
$("#forgetPwd").click(function(event){  //버튼을 클릭 했을시 popupOpen 함수 출력 
    console.log('click');
    popupOpen();	//Popup Open 함수
});

function popupOpen(){
	var url= "/register/register_findpwd";    //팝업창 페이지 URL
	var winWidth = 700;
    var winHeight = 500;
    var popupOption= "width="+winWidth+", height="+winHeight;    //팝업창 옵션(optoin)
	window.open(url,"",popupOption);
}



$("#userid").on("change",function(){

	console.log($("#userid").val());
	//폼안에 데이터를 json 형태로 서버로 보내기
	//입력 후 결과를 받아 출력하기
	$.ajax({
		url : 'dupId',
		type : 'get',
		data :  {
			userid : $("#userid").val()  
		},
		success:function(data){ 
			if(data==='fail'){
				alert("중복된 아이디 입니다.")
			}
		},
		error:function(xhr,txtStatus,error){ 
			alert(xhr.responseText);
			}
		})
	})
	
/* 	let loginBtn=$("#loginBtn");
	$(function(){
		$(loginBtn).click(function(){
			loginBtn.text("LogOut")
		   
		}) // end submit()
	}); */
</script>


<!-- login 폼에 담기 -->
<!-- 
<script>
	let myForm=$("#login");
	$(function(){
		$("#loginBtn").click(function(e){
			e.preventDefault();
			
			myForm.submit();
		   
		}) // end submit()
	});
	// end ready()
</script>
 -->
    </body>
</html>


















