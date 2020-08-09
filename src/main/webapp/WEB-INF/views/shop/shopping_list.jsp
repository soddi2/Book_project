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
			            <span class="breadcrumb-item active">FAQ</span>
			        </div>
			    </div>
			    <section class="static about-sec">
			        <div class="container">
			           <div class="table-responsive">
						<h2>Shopping List</h2>
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
									<th>책 제목</th>
									<th>지은이</th>
									<th></th>
									<th>금 액</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty boardList }" >
										<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
									</c:when> 
									<c:when test="${!empty boardList}">
										<c:forEach var="list" items="${boardList}">
											<tr>
												<td><c:out value="${list.bid}"/></td>
												<td><c:out value="${list.title}"/></td>
												<td><c:out value="${list.reg_id}"/></td>
												<td><c:out value="${list.view_cnt}"/></td>
												<td><c:out value="${list.reg_dt}"/></td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
					</div>
					<div>
						<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>
					</div>
				</div>
			</article>
			<script>
				$(document).on('click', '#btnWriteForm', function(e){
					e.preventDefault();
					location.href = "${pageContext.request.contextPath}/board/QnAwrite";
				});
			</script>
        </div>
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