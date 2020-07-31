<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>로그인 / 회원가입 폼 템플릿</title>
        <link rel="stylesheet" href="/assets/css/register_modify.css">
        <!-- Bootstrap CSS -->

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
                
                <form id="leave" action="" class="input-group">
                    <input type="text" class="input-field" name="userid" placeholder="아이디를 입력하세요" required>
                    <input type="password" class="input-field" name="password" placeholder="비밀번호를 입력하세요" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">LEAVE</button>
                </form>
                
                <form id="modify" method="post" action="" class="input-group">
                    <input type="password" name="password" class="input-field" placeholder="비밀번호를 수정해주세요." required>
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
    </body>
</html>