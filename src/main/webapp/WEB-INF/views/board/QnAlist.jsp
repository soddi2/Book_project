<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl라이브러리 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- fmt라이브러리 : 등록일 생성 -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	
<!-- : = 마우스를 올렸을 때 -->
<!-- <style>
.btn-search {
	padding : 15px 11px 1xp; 
}
</style> -->
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
		                        <div class="cart my-2 my-lg-0">
		                            <span>
		                                <i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
		                            <span class="quntity">3</span>
		                        </div>
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
  
    <div class="breadcrumb">
        <div class="container">
			            <a class="breadcrumb-item" href="index.html">Home</a>
			            <span class="breadcrumb-item active">FAQ</span>
			        </div>
			    </div>
		    	<section class="static about-sec">
			        <div class="container">
			           <div class="table-responsive">
						<h2>Q&A List</h2>
						<table class="table table-striped table-sm">
							<colgroup>
								<col style="width:5%;" />
								<col style="width:auto;" />
								<col style="width:15%;" />
								<col style="width:10%;" />
								<col style="width:10%;" />
							</colgroup>
							<thead>
								<tr>
									<th>NO</th>
									<th>글제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>수정일</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty list}" >
										<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
									</c:when> 
									<c:when test="${!empty list}">
										<c:forEach var="list" items="${list}">
											<tr>
												<td>${list.bno}</td>
												<td><a href="#" onclick="fn_contentView(<c:out value="${list.bno}"/>)"><c:out value="${list.title}"/></a>&nbsp;&nbsp;<strong>[${list.replycnt}]</strong></td>
												<%-- <td>${list.content}</td> --%>
												<td>${list.writer}</td>
		                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value='${list.regdate}'/></td>
		                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value='${list.updatedate}'/></td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
					</div>
					
		<!--페이지 목록 갯수 지정하는 폼-->
		<div class="d-flex justify-content-between" style="">
			<div class="col-md-2 col-md-offset-2">
				<select class="form-control" name="amount" style="width : 50%">
        	   		<option value="10" <c:out value="${cri.amount == 10 ? 'selected':'' }" />>10</option>
        	   		<option value="20" <c:out value="${cri.amount == 20 ? 'selected':'' }" />>20</option>
        	   		<option value="30" <c:out value="${cri.amount == 30 ? 'selected':'' }" />>30</option>
        	   		<option value="40" <c:out value="${cri.amount == 40 ? 'selected':'' }" />>40</option>
            	</select>
            </div>	
            
			<!-- start Pagination -->
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <c:if test="${pageVO.prev}">
				    <li class="page-item paginate_button previous">
				      <a class="page-link" href="${pageVO.startPage-1}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
			    </c:if>
			    <!-- 내가 5페이지를 보고 있어도 1-10까지 계속 페이지를 불러옴 -->
		        <c:forEach var="idx" begin="${pageVO.startPage}" end="${pageVO.endPage}">
		        	<!-- 현재 보여지는 페이지 활성화 -->
			    	<li class="page-item paginate_button ${pageVO.cri.pageNum==idx?'active':''}"><a class="page-link" href="${idx}">${idx}</a></li>
			    </c:forEach>
			    <c:if test="${pageVO.next}">
				    <li class="page-item paginate_button next">
				      <a class="page-link" href="${pageVO.endPage+1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
			    </c:if>
			  </ul>
			</nav>
 			<!-- 페이지번호를 누르면 동작하는 폼 -->
 			<div class="page p-2 bd-highlight" style="">
				<form action="QnAlist" id="actionForm">
					<input type="hidden" name="pageNum" value="${pageVO.cri.pageNum}" />
					<input type="hidden" name="amount" value="${pageVO.cri.amount}" />	
					<input type="hidden" name="type" value="${cri.type }" /> <!-- pageVO.cri.type -->
					<input type="hidden" name="keyword" value="${cri.keyword }" />
				</form>
 			</div>
		        <!-- end Pagination -->  
	
				<!-- 글쓰기 -->
				<div class="p-2 bd-highlight" style="margin-top: -20px">
					<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>
				</div>	                 	 
			</div>
			
			<!-- start search -->
			<div class="row"> 
               	<div class="col-md-12">
               	  <div class="d-flex justify-content-center" style="margin-top: 10px"><!--search Form-->
           	 		<!-- 검색 title -->
              		<form action="" id="searchForm">
              		<!-- 주소줄 자리 때문에 위에 있음,일관성을 줄수 있음 -->
              			<input type="hidden" name="pageNum" value="${cri.pageNum}" />
              			<input type="hidden" name="amount" value="${cri.amount}" />                            			
              			<select name="type" id="">
              				<option value="" <c:out value="${empty cri.type?'selected':'' }" />>-------</option>
              				<option value="T" <c:out value="${cri.type=='T' ? 'selected':'' }" />>제목</option>
              				<option value="C" <c:out value="${cri.type=='C' ? 'selected':'' }" />>내용</option>
              				<option value="W" <c:out value="${cri.type=='W' ? 'selected':'' }" />>작성자</option>             			
              			</select>
               				<input type="text" name="keyword" value="${cri.keyword}" />
              			<button class="btn-search" type='button'>검색</button>
              		</form>
              	   </div>
               	 </div>                             	 
        		 </div>
        		 <!-- end search -->
		 	</div>
		 

<!-- 모달 추가 -->
<!-- alert 창 대신 -->
<div class="modal" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">게시글 등록</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>처리가 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- 스크립트 -->
<script>
	$(document).on('click', '#btnWriteForm', function(e){
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}/board/QnAwrite";
	});
	
	//글제목 클릭시 read창으로 넘어가는 스크립트
	function fn_contentView(bno){
		var url = "${pageContext.request.contextPath}/board/QnAread";
		url = url + "?bno="+bno;
		location.href = url;
	}

    $(".move").click(function(e){
    	//37번줄에
    	//페이지 나누기 후에 변화를 주는 부분
    	<%-- <a href="read?bno=${vo.bno}&pageNum=${cri.pageNum}&amount=${cri.amount}">${vo.title}</a> --%>
    	// 이렇게 작성하는 부분 대체
    	e.preventDefault();
    	actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"' />");
    	actionForm.attr('action','read');
    	actionForm.submit();
    })
    
     $(function() {
	    let result = '${result}';
	    	
	    checkModal(result);
	    history.replaceState({}, null, null);
	    
	    	
	    function checkModal(result){
	    	if(result === '' || history.state){
	    		return;
	    	}
	    	if(parseInt(result) > 0) {
	    		$(".modal-body").html("게시글"+parseInt(result)+" 번이 등록되었습니다.");
	    	}
	    	//show가 띄워주기
	    	$('#myModal').modal("show");
	    }
	    
	    //사용자가 페이지 번호를 누르면 동작하는 스크립트
	    let actionForm = $("#actionForm");
	    $(".paginate_button a").click(function(e){
	   		//a태그의 동작 막기
	    	e.preventDefault();
		    //전송해야 할 폼 가져온 후 pageNum의 값과 amount 값을 변경한 후 
		    //attr : 태그에 들어있는 값을 가져다 줌
		    actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		    //폼 전송하기 
		    actionForm.submit();
			//여기서 폼을 쓰면 여기서만 쓰고 밑에서 못 씀
	    })
	    
	    //클릭하면 10,20창을  click으로 하면 두번 개념
	    $(".form-control").change(function(){
	    	//전송해야 할 폼 가져온 후 amount 값을 변경한 후 
	    	//this = form-control이고 select은 value값을 가져올 수 있음
	    	actionForm.find("input[name='amount']").val($(this).val());
	    	//폼 전송하기
	    	actionForm.submit();
	    })
	    
	    //타이틀 클릭시 페이지 나누기 정보가 있는 폼 보내기
	    $(".move").click(function(e){
	    	//37번줄에
	    	//페이지 나누기 후에 변화를 주는 부분
	    	<%-- <a href="read?bno=${vo.bno}&pageNum=${cri.pageNum}&amount=${cri.amount}">${vo.title}</a> --%>
	    	// 이렇게 작성하는 부분 대체
	    	e.preventDefault();
	    	actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"' />");
	    	actionForm.attr('action','read');
	    	actionForm.submit();
	    })
	    
	    //검색 버튼 클릭시
	    $(".btn-default").click(function(){
			//action id가 search폼인 거 담기
	    	let searchForm = $("#searchForm");
	    	
	    	//type과 keyword가 비어 있는지 확인 하고
			//비어 있으면 메세지 띄워준 후 return
			//태그가 select면 select로 
			if($("select[name='type']").val()===""){
				alert("타입을 선택해 주세요");
	    		return false; //return을 하면 안돌아 갈수도 있어어 예방차원에 false를 해줌
			}else if($("input[name='keyword']").val()===""){
		 		alert("검색어를 입력하세요");
  				return false;
	  		}
	  
			//모두 입력이 되어 있으면 폼 전송
			searchForm.find("input[name='pageNum']").val("1");
			searchForm.submit();
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