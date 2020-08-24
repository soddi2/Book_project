<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl라이브러리 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- fmt라이브러리 : 등록일 생성 -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 시큐리티 -->
<%@taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Book Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#03a6f3">
    <link rel="stylesheet" href="/assets/shop/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/assets/shop/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/assets/shop/css/styles.css">
    <link rel="icon" type="image/png" href="/assets/bookico_bk.ico">
    
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

</head>

<body>
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"><a href="#" class="web-url">www.bookstore.com</a></div>
                    <div class="col-md-6">
                        <h5>Free Shipping Over $99 + 3 Free Samples With Every Order</h5></div>
                    <div class="col-md-3">
                        <span class="ph-number">Call : 800 1234 5678</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-menu">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="/"><img src="/assets/shop/images/logo.png" alt="logo"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <c:if test="${empty auth}">
                            <li class="navbar-item">
                                <a href="/" class="nav-link">Home</a>
                            </li>
                            <li class="navbar-item active">
                                <a href="/shop/shop" class="nav-link">Shop</a>
                            </li>
                            <li class="navbar-item">
                                <a href="" class="nav-link">About</a>
                            </li>
                            <li class="navbar-item">
                                <a href="/board/QnAlist" class="nav-link">QnA</a>
                            </li>
                            <li class="navbar-item">
                                <a href="/register/register" class="nav-link">Login</a>
                            </li>
                        </c:if>
                         <c:if test="${!empty auth}">
                            <li class="navbar-item">
                                <a href="/" class="nav-link">Home</a>
                            </li>
                            <li class="navbar-item active">
                                <a href="/shop/shop" class="nav-link">Shop</a>
                            </li>
                            <li class="navbar-item">
                                <a href="" class="nav-link">About</a>
                            </li>
                            <li class="navbar-item">
                                <a href="/board/QnAlist" class="nav-link">QnA</a>
                            </li>
                            <li class="navbar-item">
                                <a href="/register/logout" class="nav-link">LogOut</a>
                            </li>
                           <li>
	                        	<form action="shopping_list" method="get">
			                        <div class="cart my-2 my-lg-0">
			                            <span>
			                                <a href="/shop/shopping_list"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></span>
			                            <span class="quntity">3</span>
			                        </div>
			                     </form>
	                        </li>
                        </c:if>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search here..." aria-label="Search">
                            <span class="fa fa-search"></span>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <div class="breadcrumb">
        <div class="container">
			            <a class="breadcrumb-item" href="index.html">Home</a>
			            <span class="breadcrumb-item active">Read</span>
			        </div>
			    </div>
			    <section class="static about-sec">
			        <div class="container">
			<article>
				<form action="" role="form">
					<div class="container" role="main">
						<h2>Board Content</h2>
						<div class="bg-white rounded shadow-sm">
							<div class="board_title"><c:out value="${vo.bno}"></c:out>,${vo.title}</div>
							<div class="board_info_box">
								<span class="board_author"></span><span class="board_date">${vo.regdate}</span>
							</div>
							<div class="board_content">${vo.content}</div>
							<section>
								<div class="board_tag">TAG : <c:out value="${vo.tag}"/></div>
							</section>
						</div>
					</div>
				</form>
				<section>
					<div style="margin-top : 20px; margin : 50px">
					<%-- <sec:authentication property="principal" var="info"/>
       				<sec:authorize access="isAuthenticated()">
        				<c:if test="${info.username == vo.writer}">  --%>               				
							<button type="submit" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
        				<%-- </c:if>
       				</sec:authorize> --%>
						<button type="button" class="btn btn-sm btn-primary" id="btnList" onclick="location.href='/board/QnAlist'">목록</button>
					</div>					
				</section>
				
				<section>
				<!-- 댓글 영역 -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-comments fa-fw"></i>
								Reply
								<%-- <sec:authorize access="isAuthenticated()"> --%>
									<button id="addReplyBtn" class="btn-reply btn-primary btn-sm">
										New Reply
									</button>
								<%-- </sec:authorize> --%>
							</div>
							
							<div class="panel-body" style="margin-top: 40px">
							<!-- 여기서 부터 반복 -->
								<ul class="chat"> 
									<li class="left clearfix" data-rno='30'>
										<div>
											<div class="header">
												<strong class="primary-font">댓글러00</strong>
												<small class="pull-right text-muted">
													2020.07.15 12:14
												</small>
											</div>
											<p>Good Job!!!</p>
										</div>						
									</li>
								</ul>
							</div>
							<!-- 만들어진 영역이기 떄문에 위임하는 형태로 해야함 -->
							<div class="panel-footer"><!-- 댓글 페이지 영역 -->
							</div>
						</div>
					</div>
				</div>    
				</section>
	</article>
</div>

<!-- 댓글 등록 모달 -->
<div class="modal" tabindex="-1" role="dialog" id="replyModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title">Reply</h5>
      </div>
      <div class="modal-body">
      	<div class="form-group">
      		<label for="">댓글 내용</label>
      		<input type="text" class="form-control" name="reply" value="댓글내용"/>
      	</div>
      	<div class="form-group">
      		<label for="">작성자</label>
      		<input type="text" class="form-control" name="replyer" value="작성자"/>
      	</div>
      	<div class="form-group">
      		<label for="">작성일</label>
      		<input type="text" class="form-control" name="replydate" value="작성일"/>
      	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" id="modalRegisterBtn">등록</button>
        <button type="button" class="btn btn-success" id="modalModBtn">수정</button>
        <button type="button" class="btn btn-danger" id="modalRemoveBtn">삭제</button>
        <button type="button" class="btn btn-primary" id="modalCloseBtn" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
    
    
<!-- 페이지 나누기와 다른 작업들을 위해서 폼 작성 -->      
<!-- 스크립트에 myForm을 가져온다 -->
<form id="myForm">
	<input type="hidden" name="bno" value="${vo.bno}" />
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />	
	<input type="hidden" name="amount" value="${cri.amount}" />	
	<input type="hidden" name="type" value="${cri.type }" /> <!-- pageVO.cri.type -->
	<input type="hidden" name="keyword" value="${cri.keyword }" />
</form>
    
<script src="/assets/js/reply.js"></script>
<script>
  	//수정 버튼 클릭 이벤트
	$(document).on('click', '#btnUpdate', function(){
		var url = "${pageContext.request.contextPath}/board/QnAmodify";
		url = url + "?bno="+${vo.bno};
		url = url + "&mode=edit";
		location.href = url;
	});
  	
$(function() {
  	
	//현재 글의 글 번호 가져오기
	let bno = ${vo.bno};
  	
	//댓글 영역 가져오기
	let replyUL = $(".chat");
	
	//댓글 영역 내용을 보여주는 함수 호출 
	showList(1);
	
	//모달 영역 가져오기
	let modal = $(".modal");
	//모달 영역이 가지고 있는 input 영역 찾기
	let modalInputReply = modal.find("input[name='reply']");
	let modalInputReplyer = modal.find("input[name='replyer']");
	let modalInputReplyDate = modal.find("input[name='replydate']");
	//모달 영역이 가지고 있는 버튼 찾기
	let modalModBtn = $("#modalModBtn");
	let modalRemoveBtn = $("#modalRemoveBtn");
	let modalRegisterBtn = $("#modalRegisterBtn");
	
	//csrf 토큰 값 생성
	let csrfHeaderName = "${_csrf.headerName}"
	let csrfTokenValue = "${_csrf.token}"
	
	//ajax가 호출될 떄는 무조건 이 부분이 따라가도록 설정
	$(document).ajaxSend(function(e,xhr,options){
		xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
	})
	
	//현재 로그인 사용자값 가져오기
	let replyer = null;
	/* <sec:authorize access="isAuthenticated()"> */
		/* replyer = '<sec:authentication property="principal.username"/>'; */
	/* </sec:authorize> */
	
	$("#addReplyBtn").click(function(){
		//input 안에 들어있는 내용 없애주기
		modal.find("input").val("");
		
		//현재 로그인한 사용자 replyer에 보여주기
		modalInputReplyer.val(replyer).attr("readonly","readonly");
		
		//작성날짜 영역 없애기
		modalInputReplyDate.closest("div").hide();
		// 닫기 버튼만 제외하고 모든 버튼을 숨기기
		modal.find("button[id!='modalCloseBtn']").hide();
		// 등록 버튼 다시 보이기
		modalRegisterBtn.show();
		
		modal.modal("show");
	})

	let pageNum = 1;
	
	modalRegisterBtn.on("click",function(){
		
		
		var reply = {
				bno:bno,
				replyer: modalInputReplyer.val(),
				reply: modalInputReply.val()
			};
		
			replyService.add(reply,function(result){ 
				alert(result);
				//modal 에 있은 댓글 내용과 관련된 내용 지우기
				modal.find("input").val("");
				//모달 창 종료
				modal.modal("hide");
				//전체 댓글 리스트 보기 
				//-1로 변경해서 마지막 페이지 보여주기
				showList(-1);
				
		}); //add 종료 		
	}) 
	
	//댓글 리스트 요청하기
	function showList(page){
		
		 replyService.getList({bno:bno,page:page},function(total,list){
			console.log(list);
			
			if(page == -1){
				pageNum = Math.ceil(total / 10.0);
				showList(pageNum);
				return;
			}
			
			if(list === null || list.length === 0){
				replyUL.html("");
				return;
			}
			
			let str = "";
			for(var i=0,len=list.length||0; i<len; i++){ //반복할 구간
				str += "<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				str += "<div><div class='header'>";
				str += "<strong class='primary-font'>"+list[i].replyer+"</strong>";
				str += "<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replydate)+"</small>";
				str += "</div><p>"+list[i].reply+"</p></div></li>";		
			}
			replyUL.html(str);
			showReplyPage(total);
		})  //getList 종료		
	}
	

	//댓글 페이지 영역 가져오기
	let replyPageFooter = $(".panel-footer");
	
	function showReplyPage(total){
		
		//마지막 페이지 계산
		let endPage = Math.ceil(pageNum/10.0)*10;
		//시작 페이지 계산
		let startPage = endPage - 9;
		//이전 버튼
		let prev = startPage != 1;
		//다음 버튼 
		let next = false;
		
		//실제 마지막 페이지 계산
		if(endPage * 10 >= total){
			endPage = Math.ceil(total/10.0);
		}
		if(endPage * 10 < total){
			next = true;
		}
		
		//디자인 작성후 댓글 페이지 영역에 보여주기
		let str = "<ul class='pagination pull-right'>";
		if(prev){
			str += "<li class='page-item'><a class='page-link'";
			str += " href='"+(startPage - 1)+"'>Prev</a></li>";
		}
		for(var i = startPage; i<= endPage; i++){
			let active = pageNum == i ? "active":""; //pageNum = "2"면 스트링으로 넘어오는데 i는 int라 타입비교까지 하면 안됌
			str += "<li class='page-item "+active+"'>";
			str += "<a class='page-link' href='"+i+"'>"+i;
			str += "</a></li>";
		}
		if(next){
			str += "<li class='page-item'><a class='page-link'";
			str += " href='"+(endPage + 1)+"'>Next</a></li>";
		}
		str += "</ul></div>";
		replyPageFooter.html(str);
	}
	
	//댓글 페이지 번호를 누르면 실행되는 스크립트
	replyPageFooter.on("click","li a",function(e){
		//href 때문에 움직이는 이벤트 제거
		e.preventDefault();
		
		pageNum = $(this).attr("href");
		showList(pageNum);
	})
	
	$(modalRemoveBtn).on("click",function(){		
		//댓글 삭제 버튼이 눌러지면 로그인 여부 확인하기
		if(!replyer){
			alert('로그인 후 삭제가 가능합니다.');
			modal.modal("hide");
			return;
		}
		//현재 모달창에 보이는 사용자와 로그인 사용자가 같은지 확인하기
		let originReplyer = modalInputReplyer.val();
		if(originReplyer != replyer){
			alert("자신의 댓글만 삭제가 가능합니당");
			modal.modal("hide");
			return;
		}
		
		//댓글 삭제
		//json은 키 밸류값으로 가야한다고!!
		replyService.remove({rno:modal.data("rno")},replyer,
				function(result){ 
					alert(result);
					//모달 창 종료
					modal.modal("hide");
					//전체 댓글 리스트 보기
					showList(pageNum); //페이지 나누기 후 : 현재 보던 페이지
	
				},
				function(msg){ 
					alert("삭제 실패");
		}) //remove 종료
	})
	
	//댓글 수정
	$(modalModBtn).on("click",function(){
		//댓글 수정 버튼이 눌러지면 로그인 여부 확인하기
		if(!replyer){
			alert('로그인 후 수정이 가능합니다.');
			modal.modal("hide");
			return;
		}
		//현재 모달창에 보이는 사용자와 로그인 사용자가 같은지 확인하기
		let originReplyer = modalInputReplyer.val();
		if(originReplyer != replyer){
			alert("자신의 댓글만 수정이 가능합니당");
			modal.modal("hide");
			return;
		}
		
		let reply = {
				rno:modal.data("rno"),
				reply:modalInputReply.val(),
				replyer : modalInputReplyer.val()
		}
		
		replyService.update(reply,function(result){
							alert(result);
							
							//모달 창 종료
							modal.modal("hide");
							
							//전체 댓글 리스트 보기
							showList(pageNum); //페이지 나누기 후 : 현재 보던 페이지
							
						},function(error){
							alert("수정 실패");
			
		})   //update 종료
	})
	
	//댓글 하나 가져오기
	//실제로는 li에 이벤트를 걸어야 하지만 댓글이 나중에 생기는 
	//부분이기 때문에 존재하는 영역에 댓글을 걸고 나중에 생기는 
	//li 태그에 위임하는 방식으로 작성
	$(".chat").on("click","li",function(){ 
		
		//현재 클릭된 댓글의 rno를 가져오기
		var rno = $(this).data("rno");
		
		
		replyService.get(rno,
				function(result){
					console.log(result);
					//도착한 데이터 모달창에 보여주기
					modalInputReply.val(result.reply);
					modalInputReplyer.val(result.replyer);
					modalInputReplyDate.val(replyService.displayTime(result.replydate))
											.attr("readonly","readonly"); //작성일 수정 금지
					
					//현재 읽어온 rno 담아주기
					modal.data("rno",result.rno);
					
					//반복 작업시 버튼 다시 보여주기
					modal.find("button").show();
					
					//등록 버튼 지우기
					modal.find("button[id='modalRegisterBtn']").hide();
					
					//작성 날짜 영역 보여주기
					modalInputReplyDate.closest("div").show();
					modal.find("button").show();
					modal.find("button[id='modalRegisterBtn']").hide();
					
					modal.modal("show");
					
		},function(error){
			alert("데이터 없음");
	
		}) 
	})
})
    </script>
</section>
    
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="address">
                        <h4>Our Address</h4>
                        <h6>The BookStore Theme, 4th Store
                        Beside that building, USA</h6>
                        <h6>Call : 800 1234 5678</h6>
                        <h6>Email : info@bookstore.com</h6>
                    </div>
                    <div class="timing">
                        <h4>Timing</h4>
                        <h6>Mon - Fri: 7am - 10pm</h6>
                        <h6>ââSaturday: 8am - 10pm</h6>
                        <h6>âSunday: 8am - 11pm</h6>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="navigation">
                        <h4>Navigation</h4>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                            <li><a href="terms-conditions.html">Terms</a></li>
                            <li><a href="products.html">Products</a></li>
                        </ul>
                    </div>
                    <div class="navigation">
                        <h4>Help</h4>
                        <ul>
                            <li><a href="">Shipping & Returns</a></li>
                            <li><a href="privacy-policy.html">Privacy</a></li>
                            <li><a href="faq.html">FAQâs</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="form">
                        <h3>Quick Contact us</h3>
                        <h6>We are now offering some good discount 
                            on selected books go and shop them</h6>
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <input placeholder="Name" required>
                                </div>
                                <div class="col-md-6">
                                    <input type="email" placeholder="Email" required>
                                </div>
                                <div class="col-md-12">
                                    <textarea placeholder="Messege"></textarea>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn black">Alright, Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
                    </div>
                    <div class="col-md-6">
                        <div class="share align-middle">
                            <span class="fb"><i class="fa fa-facebook-official"></i></span>
                            <span class="instagram"><i class="fa fa-instagram"></i></span>
                            <span class="twitter"><i class="fa fa-twitter"></i></span>
                            <span class="pinterest"><i class="fa fa-pinterest"></i></span>
                            <span class="google"><i class="fa fa-google-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="/assets/shop/js/jquery.min.js"></script>
    <script src="/assets/shop/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/assets/shop/js/owl.carousel.min.js"></script>
    <script src="/assets/shop/js/custom.js"></script>
</body>

</html>