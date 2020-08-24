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
            <span class="breadcrumb-item active">Terms and Condition</span>
        </div>
    </div>
    <section class="product-sec">
        <div class="container">
            <h1>How to read the book you want in 7 days</h1>
            <div class="row">
                <div class="col-md-6 slider-sec">
                    <!-- main slider carousel -->
                    <div id="myCarousel" class="carousel slide">
                        <!-- main slider carousel items -->
                        <div class="carousel-inner">
                            <!-- <div class="active item carousel-item" data-slide-number="0">
                                <img src="/assets/shop/images/product2.jpg" class="img-fluid">
                            </div> -->
                            <div class="item carousel-item" data-slide-number="1">
                                <img src="/assets/shop/images/product2.jpg" class="img-fluid">
                            </div>
                            <div class="item carousel-item" data-slide-number="2">
                                <img src="/assets/shop/images/product3.jpg" class="img-fluid">
                            </div>
                        </div>
                        <!-- main slider carousel nav controls -->
                        <ul class="carousel-indicators list-inline">
                            <!-- <li class="list-inline-item active">
                            <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#myCarousel">
                                <img src="/assets/shop/images/detailpage/202004211422083541_3.jpg" class="img-fluid">
                            </a>
                            </li> -->
                            <li class="list-inline-item">
                                <a id="carousel-selector-1" data-slide-to="1" data-target="#myCarousel">
                                <img src="/assets/shop/images/product2.jpg" class="img-fluid">
                            </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-2" data-slide-to="2" data-target="#myCarousel">
                                <img src="/assets/shop/images/product3.jpg" class="img-fluid">
                            </a>
                            </li>
                        </ul>
                    </div>
                    <!--/main slider carousel-->
                </div>
                <div class="col-md-6 slider-content">
                    <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and Scrambled it to make a type and typesetting industry. Lorem Ipsum has been the book. </p>
                    <p>t has survived not only fiveLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and</p>
                    <ul>
                        <li>
                            <span class="name">Book name</span><span class="clm">:</span>
                            <span class="price">$4.71</span>
                        </li>
                        <li>
                            <span class="name">author</span><span class="clm">:</span>
                            <span class="price">$10.99</span>
                        </li>
                        <li>
                            <span class="name">publisher</span><span class="clm">:</span>
                            <span class="price">$3.37</span>
                        </li>
                        <li><span class="save-cost"></span></li>
                    </ul> -->             		
                    <div class="btn-sec">
                        <button class="btn add-cart">Rental Now</button>
                    </div> 
                </div>
            </div>
        </div>
    </section>
    
    <section class="related-books">
        <div class="container">
            <h2>You may also like these book</h2>
            <div class="recomended-sec">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img1.jpg" alt="img">
                            <h3>how to be a bwase</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
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
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img3.jpg" alt="img">
                            <h3>7-day self publish...</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <img src="/assets/shop/images/img4.jpg" alt="img">
                            <h3>wendy doniger</h3>
                            <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                            <div class="hover">
                                <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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

<!-- 대여 확인 창 -->
<div class="modal" tabindex="-1" id="modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Rental Window</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>대여하시겠습니까?</p>
      </div>
	<form action="insertCart" method="post">
	      <div class="modal-footer">
	     	<input type="hidden" name="bno" value="${bno}"/>
	     	<input type="hidden" name="userid" value="${auth.userid}"/>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-Rental">Rental</button>
	      </div>
      </form>
    </div>
  </div>
</div>
        
        <script>
 
        $(function(){
        	let form = $("form[role='form']");
        	let userid = $("input[name='userid']").val();
        	
        	$(".add-cart").on("click",function(e){
        		e.preventDefault();
	        	if(userid!=''){
	        		
		    		 $("#modal").show();
		    		 
		    		 $(".btn-secondary, .close").on('click',function(){
		    			 $("#modal").hide();
		    			 
		    		});
	
	        	}else{
	        		alert("로그인이 필요한 기능입니다.");        		
	        	}
	        		
	        		
	        })//add-cart end
	        
	        
	        // 도서 상세 정보 요청
	        let isbn = '${isbn}';
	        let detail = "http://data4library.kr/api/srchDtlList?authKey=7005ece19af1a6fef5c5c2415a002da8d094906b46fd7fee08525d0a12d15b11&isbn13="+ isbn +"&format=json"
	        let mainimage = $(".carousel-inner");
	        let sideimage = $(".carousel-indicators");
	        let summaryC = $(".slider-content");
	        
    		$.ajax({	
    			url : detail,
    			type : "get",
    			dataType: 'jsonp',
    			/* data : {
    				isbn13 : isbn
    			}, */
    			success:function(data){
    	    		console.log(data);
    	    		console.log(data.response.detail[0].book.bookImageURL);
    	    		
    	    		let content = "";
    	    		content += 
    	    		"<div class='active item carousel-item' style='text-align: center;' data-slide-number='0'>"+
                    	"<img src='"+ data.response.detail[0].book.bookImageURL +"'alt='41616516' class='img-fluid'>"+
                	"</div>";
                	
					let str = "";
					str +=
                	"<li class='list-inline-item active'>"+
                    "<a id='carousel-selector-0' class='selected' data-slide-to='0' data-target=''#myCarousel'>"+
                        "<img src='"+ data.response.detail[0].book.bookImageURL +"' class='img-fluid'>"+
                    "</a>"+
                    "</li>";
                    
                    let summary = "";
                    summary +=
                    "<p>"+ data.response.detail[0].book.description +"</p>"+ 
                    "<ul>"+
                        "<li>"+
                            "<span class='name'>Book name</span><span class='clm'>:</span>"+
                            "<span class='price'>"+ data.response.detail[0].book.bookname +"</span>"+
                        "</li>"+
                        "<li>"+
                            "<span class='name'>author</span><span class='clm'>:</span>"+
                            "<span class='price'>"+ data.response.detail[0].book.authors +"</span>"+
                        "</li>"+
                        "<li>"+
                            "<span class='name'>publisher</span><span class='clm'>:</span>"+
                            "<span class='price'>"+ data.response.detail[0].book.publisher +"</span>"+
                        "</li>"+
                        "<li><span class='save-cost'></span></li>"+
                    "</ul>";
    	    		
    	    		/*  $(content).append(".carousel-inner"); */
    	    		 $(str).prependTo(".carousel-indicators");
   	    			 mainimage.append(content);
   	    			 /* sideimage.append(str); */
   	    			 summaryC.prepend(summary);
					 
    			},
    			error: function (xhr,txtStatus,error){        
    	        	 /* alert(xhr.status); */ 
    	        	console.log(xhr);
    	        	console.log(txtStatus);
    	        }
    		}) 
        })
        
	   
        </script>
        
        
    </footer>
    <script src="/assets/shop/js/jquery.min.js"></script>
    <script src="/assets/shop/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/assets/shop/js/owl.carousel.min.js"></script>
    <script src="/assets/shop/js/custom.js"></script>
</body>

</html>