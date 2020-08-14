<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
    </header>
    <div class="breadcrumb">
        <div class="container">
            <a class="breadcrumb-item" href="index.html">Home</a>
            <span class="breadcrumb-item active">Shop</span>
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h2>highly recommendes books</h2>
            <div class="recomended-sec">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img1.jpg" alt="img">
                            <h3>how to be a bwase</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img2.jpg" alt="img">
                            <h3>How to write a book...</h3>
                            <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                            <span class="sale">Sale !</span>
                            <div class="hover">
                                <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img3.jpg" alt="img">
                            <h3>7-day self publish...</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img4.jpg" alt="img">
                            <h3>wendy doniger</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <a href="product-single.html">
                                    <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="recent-book-sec">
                <div class="row">
                	 <div class="table-responsive">
						<h2>Search List</h2>
						<table class="table table-striped table-sm" id="table">
							<colgroup>
								<col style="width:5%;" />
								<col style="width:auto;" />
								<col style="width:15%;" />
								<col style="width:10%;" />
								<col style="width:10%;" />
								<col style="width:10%;" />
								<col style="width:10%;" />
							</colgroup>
							<thead>
								<tr>
									<th>번호</th>
									<th>도서명</th>
									<th>저자</th>
									<th>출판사</th>
									<th>발행년도</th>
									<th>도서권수</th>
									<th>대출건수</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty list}" >
										<tr><td colspan="7" align="center">데이터가 없습니다.</td></tr>
									</c:when> 
									<c:when test="${!empty list}">
										<c:forEach var="list" items="${list}">
											<tr class="remove">
												<td>${list.bno}</td>
												<td>${list.bookname}</td>
												<%-- <td><a href="#" onclick="fn_contentView(<c:out value="${list.bno}"/>)"><c:out value="${list.title}"/> --%>
												<td>${list.writer}</td>
												<td>${list.publisher}</td>
		                                        <td>${list.issue_year}</td>
		                                        <td>${list.book_qnt}</td>
		                                        <td>${list.rent_qnt}</td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
								<%-- <c:choose>
									<c:when test="${empty search}" >
										<tr><td colspan="7" align="center">데이터가 없습니다.</td></tr>
									</c:when> 
									<c:when test="${!empty search}">
										<c:forEach var="list" items="${search}">
											<tr class="remove">
												<td>${search.bno}</td>
												<td>${search.bookname}</td>
												<td>${search.writer}</td>
												<td>${search.publisher}</td>
		                                        <td>${search.issue_year}</td>
		                                        <td>${search.book_qnt}</td>
		                                        <td>${search.rent_qnt}</td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose> --%>
							</tbody>
						</table>
					</div>
                </div>
                <a href="" type="button" class="btn gray-btn" id="addbtn">load More books</a>
               <%-- <div class="btn-sec">
               		<input type="hidden" name="amount" value="${cri.amount}" />
	                <button id="addBtn" class="btn gray-btn"><span>load More books</span></button>
                </div> --%>
            </div>
        </div>
        
        <!--페이지 목록 갯수 지정하는 폼-->
		<%-- <div class="d-flex justify-content-between" style="">
			<div class="col-md-2 col-md-offset-2">
				<select class="form-control" name="amount" style="width : 50%">
        	   		<option value="10" <c:out value="${cri.amount == 10 ? 'selected':'' }" />>10</option>
        	   		<option value="20" <c:out value="${cri.amount == 20 ? 'selected':'' }" />>20</option>
        	   		<option value="30" <c:out value="${cri.amount == 30 ? 'selected':'' }" />>30</option>
        	   		<option value="40" <c:out value="${cri.amount == 40 ? 'selected':'' }" />>40</option>
            	</select>
            </div>	
		</div> --%>
		
       	<!-- start search -->
		<div class="row"> 
              	<div class="col-md-12">
              	  <div class="d-flex justify-content-center" style="margin-top: 10px"><!--search Form-->
          	 		<!-- 검색 title -->
             		<form action="" id="searchForm">
             		<!-- 주소줄 자리 때문에 위에 있음,일관성을 줄수 있음 -->
             			<input type="hidden" name="pageNum" value="${cri.pageNum}" />
             			<input type="hidden" name="amount" value="${cri.amount}" />                            			
             			<input type="hidden" name="tableamount" value="${cri.amount}" />                            			
             			<select name="type" id="">
             				<option value="" <c:out value="${empty cri.type?'selected':'' }" />>-------</option>
             				<option value="T" <c:out value="${cri.type=='T' ? 'selected':'' }" />>도서명</option>
             				<option value="C" <c:out value="${cri.type=='C' ? 'selected':'' }" />>저자</option>
             				<option value="W" <c:out value="${cri.type=='W' ? 'selected':'' }" />>출판사</option>             			
             			</select>
              				<input type="text" name="keyword" value="${cri.keyword}" />
             			<button class="btn-search" type='button'>검색</button>
             		</form>
             	   </div>
              	 </div>                             	 
       		 </div>
       <!-- end search -->
        
    </section>
    
    <!-- 모달창 -->
	<div class="modal" tabindex="-1">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <p>Modal body text goes here.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>
    
    <script>
   let amount = $("input[name='tableamount']").val();
   let amount = $("input[name='pageNum']").val();
   let keyword = $("input[name='keyword']").val();
   let searchForm = $("#searchForm");
   
    $("#addbtn").click(function moreList(e){
    	e.preventDefault();
    	
    	amount = parseInt(amount);
	    amount += 10;
	    console.log(amount);

        $.ajax({
            url :"/shop/shoplist",
            type :"POST",
            data : { 
            		amount : amount,
            		keyword : keyword 
            },
            success :function(data){
                console.log(data);

    	   $('.remove').remove();
    	   
    	   
           let content="";
           for(var i=0; i<data.length; i++){
        	   content +=
        	   "<tr class='remove'>"+
	                "<td>"+data[i].bno+"</td>"+
	                "<td>"+data[i].bookname+"</td>"+
	                "<td>"+data[i].writer+"</td>"+
	                "<td>"+data[i].publisher+"</td>"+
	                "<td>"+data[i].issue_year+"</td>"+
	                "<td>"+data[i].book_qnt+"</td>"+
	                "<td>"+data[i].rent_qnt+"</td>"+
               "</tr>";
           }
	       /* content += "<input type='text' name='keyword' value='${cri.keyword}'/>" */
           /* content+="<a href='' type='button' class='btn gray-btn' id='morelist'>load More books</a>"; */
           
           /* $('#addbtn').remove();//remove btn */

           $(content).appendTo("#table");
           
           searchForm.find("input[name='pageNum']").val("1");
		   searchForm.submit();
  
            }, error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
               }
        });
    });
    
	  //검색 버튼 클릭시
	    $(".btn-search").click(function(){
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
	    
	 

    </script>
    
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
                            <li><a href="/">Home</a></li>
                            <li><a href="about.jsp">About Us</a></li>
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