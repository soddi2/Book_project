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
            <span class="breadcrumb-item active">Shop</span>
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h2>highly recommendes books</h2>
            <div class="recomended-sec">
                <div class="row" id="result">
               <!--  <form action="/shop/detailbooks">
                </form> -->
                   <%--  <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="${doc.bookImageURL}" alt="img">
                            <h3>how to be a bwase</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                            </div>
                        </div>
                    </div> --%>
                   <!--  <div class="col-lg-3 col-md-6">
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
                    </div> -->
                </div>
            </div>
            <h2>recently added books to our store</h2>
            <div class="recent-book-sec">
                <div class="row" id="recently">
                    <!-- <div class="col-md-3">
                        <div class="item">
                            <img src="/assets/shop/images/r1.jpg" alt="img">
                            <h3><a href="#">Keepers of the kalachakara</a></h3>
                            <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                        </div>
                    </div> -->
                </div>
                <div class="btn-sec">
                    <button class="btn gray-btn">load More books</button>
                </div>
            </div>
        </div> 
    
    </section>

    <script type="text/javascript" src="/assets/js/board/js/jquery.ajax-cross-origin.min.js"></script>
    <script>  
   //인기 도서 목록
   $(function(){
	   $(function popularbooks(){
		   let result = $("#result");

		   $.ajax({ 
		    	url: "http://data4library.kr/api/loanItemSrch?authKey=7005ece19af1a6fef5c5c2415a002da8d094906b46fd7fee08525d0a12d15b11&format=json",    	
		    	type: "GET",
		    	dataType: 'jsonp',  
	   	    	data : {
	   	    		pageNo : "1",
	   	    		pageSize : "4"
	   	    	},
		    	success:function(data){
		    		console.log(data);

		    		let str = "";
		    		$.each(data.response.docs, function(i, item){	  
		     			str += "<div class='col-lg-3 col-md-6'>";
		    			str += "<div class='item' style='text-overflow:ellipsis; overflow:hidden; white-space:nowrap;' >";
		    			str += "<img src=" + item.doc.bookImageURL + " alt='img'>";
		    			str += "<h3>" + item.doc.bookname + "</h3>";
		    			str += "<h6><span class='price'>" + item.doc.authors + "</span> <br> / <p>"+ item.doc.publisher + "</p></h6>";
		    			str += "<div class='hover'>";
		    			str += "<a class='detail' href='/shop/detailbooks?isbn="+item.doc.isbn13+ "'>";
		    			str += "<span><i class='fa fa-long-arrow-right' aria-hidden='true'></i></span>";
		    			str += "</a>";
		    			str += "</div>";
		    			str += "</div>";
		    			str += "</div>";
		    		})	
		    	
		    		console.log(str);	

		   			result.append(str);
			    	
			    },
		    	error: function (xhr,txtStatus,error){        
		        	console.log(xhr);
		        	console.log(txtStatus);
		        }   
		    });	   
	  
	   })//function 종료
	   
	   //최근 추가 추천 도서 목록
	   $(function recentlybooks(){
		   /* window.addEventListener("wheel", func); */
			
		   let recently = $("#recently");
		   
		   $.ajax({ 
		    	/* crossOrigin : true, */
		    	url: "http://data4library.kr/api/loanItemSrch?authKey=7005ece19af1a6fef5c5c2415a002da8d094906b46fd7fee08525d0a12d15b11&format=json",    	
		    	type: "GET",
		    	/* contentType:"application/json",
		    	dataType:'json', */
		    	/* dataType: 'jsonp',
		    	jsonp: 'view', */
		    	dataType: 'jsonp',  
	   	    	/* jsonpCallback: "myCallback", */
	   	    	
	   	    	data : {
	   	    		pageNo : "2",
	   	    		pageSize : "20"
	   	    	},
		    	success:function(data){
		    		console.log(data);
		    		
		    		let str = "";
		    		$.each(data.response.docs, function(i, item){
		    		    // index(i) 에는 배열의 인덱스 (0 부터 시작)
		    		    // el 에는 각각의 배열 요소를 말한다 ex) 첫번째 실행되는 콜백의 el 은 배열[0] 이 된다
		     			str += "<div class='col-md-3'>";
		     			str += "<div class='item'>";
		     			str += "<img src=" + item.doc.bookImageURL + " alt='img'>";
		     			str += "<h3><a class='detail' href='/shop/detailbooks?isbn="+item.doc.isbn13+ "'>" + item.doc.bookname + "</a></h3>";
		     			str += "<h6><span class='price'>" + item.doc.authors + "</span> <br> / <a class='detail' href='/shop/detailbooks?isbn="+item.doc.isbn13+ "'>"+ item.doc.publisher + "</a></h6>";
		     			str += "</div>";
		     			str += "</div>";
		    		})
		   		
		    	console.log(str);	

		    	recently.append(str);
		    	
		    	/* result.attr(str); */
		    	
		   		//result.html(str); 데이터를 한번만 보여줄때
		    			
		    	},
		    	error: function (xhr,txtStatus,error){        
		        	/* alert(xhr.status); */
		        	console.log(xhr);
		        	console.log(txtStatus);
		        }   
		    });	   
	   
	   }) 

   })//전체 $(function) end
   
   
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