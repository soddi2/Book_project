<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Library</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="assets/bookico_bk.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="assets/css/slick.css"> 
        <link rel="stylesheet" href="assets/css/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">



        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse" data-offset="100">


        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <nav class="navbar navbar-default bootsnav navbar-fixed no-background white">

                <!-- Start Top Search -->
                <form action="/shop/shopSearch" method="post">
	                <div class="top-search">
	                    <div class="container">
	                        <div class="input-group">
	                        	<span class="input-group-addon"><i class="fa fa-search"></i></span>
	                            <input id="booksearch" type="text" name="keyword" class="form-control" placeholder="Search" value="${cri.keyword}" />
	                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
	                        </div>
	                    </div>
	                </div>
                </form>
                <!-- End Top Search -->


                <div class="container"> 
                    <div class="attr-nav">
                        <ul>
                            <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div> 

                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="#brand">
                            <img src="assets/images/logo.png" class="logo" alt="">
                            <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                        </a>

                    </div>
                    <!-- End Header Navigation -->

                    <!-- navbar menu -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">
                        	<c:if test="${empty auth}">
	                            <li><a href="#home">Home</a></li>                    
	                            <li><a href="#features">B.Author</a></li>
	                            <li><a href="#service">Service</a></li>
	                            <li><a href="#portfolio">N.BestSeller</a></li>
	                            <li><a href="#test">Event</a></li>
	                            <li><a href="#contact">Recommends</a></li>
	                            <li><a href="/shop/shop">Shop</a></li>
	                            <li><a href="/board/QnAlist">Q&A</a></li>
	                            <li><a href="/register/register">Login</a></li>
                        	</c:if>
                            <!-- 로그아웃 -->
							<c:if test="${!empty auth}">
							    <li><a href="#home">Home</a></li>                    
	                            <li><a href="#features">B.Author</a></li>
	                            <li><a href="#service">Service</a></li>
	                            <li><a href="#portfolio">N.BestSeller</a></li>
	                            <li><a href="#test">Event</a></li>
	                            <li><a href="#contact">Recommends</a></li>
	                            <li><a href="/shop/shop">Shop</a></li>
	                            <li><a href="/board/QnAlist">Q&A</a></li>							
								<li><a href="/register/logout">Logout</a></li>
								<li><a href="/register/register_modify">Modify</a></li>
							</c:if> 
							
                            <!-- 팝업창 띄우기 -->
                            <!-- <li>
								<button onclick="window.open('/register/register','회원가입','width=410,height=490,location=no,status=no,scrollbars=no');">button</button>
                            </li> -->
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div> 

            </nav>

            <!--Home Sections-->

            <section id="home" class="home bg-black fix">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="col-md-12">
                                <div class="hello">
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h1 class="text-yellow"> Warm your Heart </h1>
                                            <h3 class="text-white text-uppercase">We Create a Concept into The Market </h3>
                                        </div>
                                    </div><!-- End off slid item -->

                                </div>
                            </div>

                        </div>


                        <a class="mouse-scroll" href="#about"> 
                            <span class="mouse">
                                <span class="mouse-movement"></span>
                            </span>
                            <span class="mouse-message fadeIn">Explore</span> <br />
                            <!--<i class="fa fa-angle-down m-top-10 fadeIn mouse-message"></i>--> 
                        </a>

                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->



            <!--About Section-->
            <section id="about" class="about bg-yellow roomy-80">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="main_about text-center">
                                <h1 class="text-black">Made is local library based on Korea </h1>
                                <h2 class="text-white">- & -</h2>
                                <h3 class="text-black text-uppercase">We need men who can dream of things </h3>
                                <h3 class="text-black text-uppercase">that never were.</h3>

                                <a href="" class="btn btn-primary m-top-100">Get In Touch</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>



            <!--Featured Section-->
            <section id="features" class="features bg-white">
                <div class="container">
                    <div class="row">
                        <div class="main_features fix roomy-70">

                            <div class="col-md-5">
                                <div class="features_item">
                                    <div class="head_title">
                                        <h2 class="text-uppercase">Author <strong> of the month</strong></h2>
                                    </div>
                                    <div class="featured_content">
                                        <p>Culture makes people understand each other better.
											And if they understand each other better in their soul,
											it is easier to overcome the economic and political
											barriers. But first they have to understand that their
											neighbor is, in the end, just like them, with the same
											problems, the same questions.</p>
											<p style="text-align: center">-Paulo Coelho-</p>
                                        <!-- <a href="" class="btn btn-default m-top-40">Read More</a> -->
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-md-offset-1 sm-m-top-50">
                                <div class="features_item2_area">
                                    <div class="features_item2 text-center">
                                        <div class="divider_horizontal"></div>
                                        <div class="divider_vertical"></div>
                                        <div class="col-xs-6">
                                            <div class="features_item_text">
                                                <img src="assets/images/authors/giyom.jpg" alt="" class="img-circle" />
                                                <p class="m-top-20">Guillaume Musso</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="features_item_text">
                                                <img src="assets/images/authors/Kennedy00208.jpg" alt="" class="img-circle" />
                                                <p class="m-top-20">Douglas Kennedy</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="features_item_text m-top-50">
                                                <img src="assets/images/authors/paulocoelho.jpg" alt="" class="img-circle" />
                                                <p class="m-top-20">Paulo Coelho</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="features_item_text m-top-50">
                                                <img src="assets/images/authors/rolling.jpg" alt="" class="img-circle" />
                                                <p class="m-top-20">Joan K. Rowling</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Featured Section-->


            <!--Business Section-->
            <section id="service" class="service bg-grey roomy-70">
                <div class="container">
                    <div class="row">
                        <div class="main_service">
                            <div class="col-md-6">
                                <div class="service_slid">
                                    <div class="slid_shap bg-yellow"></div>
                                    <div class="service_slid_item text-center">
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
	                                            	<a href="/register/register">
		                                            	<img src="assets/images/serviceicon/register_icon.png" alt=""/>
	                                            	</a>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">Register</h5>
                                        </div>
                                        
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
	                                            	<img src="assets/images/serviceicon/rantal_icon.png" alt=""/>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">Rental</h5>
                                        </div>
                                        
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
		                                            	<img src="assets/images/serviceicon/return_icon.png" alt=""/>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">Return</h5>
                                        </div>
                                        
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
	                                            	<img src="assets/images/serviceicon/booksearch_icon.png" alt=""/>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">BookSearch</h5>
                                        </div>
                                        
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
	                                            	<a href="/shop/shop">
		                                            	<img src="assets/images/serviceicon/recommend_icon.png" alt=""/>
	                                            	</a>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">Recommend</h5>
                                        </div>
                                        
                                        <div class="service_slid_text">
                                        	<div style="/*  place-content:center; */ text-align: -webkit-center; ">	
	                                            <span class="" >
	                                            	<a href="/board/QnAlist">
		                                            	<img src="assets/images/serviceicon/borad_icon.png" alt=""/>
	                                            	</a>
	                                            </span>
                                            </div>
                                            <h5 class="text-black m-top-20">Q&A Borad</h5>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-md-offset-1">
                                <div class="service_item sm-m-top-50">
                                    <div class="head_title">
                                        <h2 class="text-uppercase">Our <strong>Service</strong></h2>
                                    </div>
                                    <div class="service_content">
                                        <p>Culture makes people understand each other better.
											And if they understand each other better in their soul,
											it is easier to overcome the economic and political
											barriers. But first they have to understand that their
											neighbor is, in the end, just like them, with the same
											problems, the same questions.</p>
										<p style="text-align: center;">-Paulo Coelho-</p>

                                         <!-- <a href="" class="btn btn-default m-top-40">Read More</a>  -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End off Business section -->


            <!--Team And Skill Section-->
            <section id="teams" class="teams roomy-80">
                <div class="container">
                    <div class="row">
                        <div class="main_teams_content fix">
                            <div class="col-md-6">
                                <div class="teams_item">
                                    <div class="head_title">
                                        <h2 class="text-uppercase">New <strong>BestSeller</strong></h2>
                                    </div>
                                    <p>Now, I say to you today my friends, even though we face the difficulties of today and tomorrow, 
                                    I still have a dream. It is a dream deeply rooted in the American dream. 
                                    I have a dream that one day this nation will rise up and live out the true meaning of its creed: - 
                                    'We hold these truths to be self-evident, that all men are created equal.' </p>
                                    <p style="text-align: center;"> -Martin Luther King Jr.- </p>


                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="teams_item text-center sm-m-top-50">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <img src="assets/images/best/best1.jpg" alt="" />
                                            <h4 class="m-top-20">저자 <strong>김영민</strong></h4>
                                            <h5>어크로스</h5>
                                            <div class="separator"></div>
                                            <ul class="list-inline">
                                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                            </ul>
                                        </div><!-- End off col-md-4 -->
                                        <div class="col-sm-4">
                                            <img src="assets/images/best/best2.jpg" alt=""  />
                                            <h4 class="m-top-20">저자 <strong>크리스 토바니</strong></h4>
                                            <h5>연암서가</h5>
                                            <div class="separator"></div>
                                            <ul class="list-inline">
                                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                            </ul>
                                        </div><!-- End off col-md-4 -->
                                        <div class="col-sm-4">
                                            <img src="assets/images/best/best3.jpg" alt="" />
                                            <h4 class="m-top-20">저자 <strong>이재훈,임철호 외 </strong></h4>
                                            <h5>수작걸다</h5>
                                            <div class="separator"></div>
                                            <ul class="list-inline">
                                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                            </ul>
                                        </div><!-- End off col-md-4 -->
                                    </div>
                                </div>
                            </div><!-- End off col-md-6 -->
                        </div><!-- End off main Team -->

                        <div class="col-md-12">
                            <div class="skill">
                                <div class="team_content_details_skills m-top-50">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="teamskillbar clearfix m-top-50 text-uppercase" data-percent="80%">
                                                <label>kyobo books</label>
                                                <div class="teamskillbar-bar" style="width: 80%;"></div>
                                            </div> <!-- End Skill Bar -->

                                            <div class="teamskillbar clearfix m-top-50 text-uppercase" data-percent="75%">
                                                <label>Yp books</label>
                                                <div class="teamskillbar-bar" style="width: 75%;"></div>
                                            </div> <!-- End Skill Bar -->
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="teamskillbar clearfix m-top-50 text-uppercase" data-percent="90%">
                                                <label>Aladin books</label>
                                                <div class="teamskillbar-bar" style="width: 90%;"></div>
                                            </div> <!-- End Skill Bar -->

                                            <div class="teamskillbar clearfix m-top-50 text-uppercase" data-percent="98%">
                                                <label>Bandinlunis</label>
                                                <div class="teamskillbar-bar" style="width: 98%;"></div>
                                            </div> <!-- End Skill Bar -->
                                        </div>

                                    </div>
                                </div>
                            </div><!-- End off skill -->
                        </div><!-- End col-md-12 -->
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Team & Skill section -->


            <!--Choose section-->
            <section id="choose" class="choose bg-grey roomy-80">
                <div class="container">
                    <div class="row">
                        <div class="main_choose">
                            <div class="col-md-6">
                                <div class="choose_mac">
                                    <div class="choose_slide">
                                        <!-- <div class="choose_item">
                                            <img src="assets/images/event/event6.jpg" alt="" />
                                        </div> -->
                                        <div class="choose_item">
                                            <img src="assets/images/event/event2.jpg" alt="" />
                                        </div>
                                        <div class="choose_item">
                                            <img src="assets/images/event/event3.jpg" alt="" />
                                        </div>
                                        <div class="choose_item">
                                            <img src="assets/images/event/event4.jpg" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-6 -->

                            <div class="col-md-5 col-md-offset-1">
                                <div class="choose_content sm-m-top-40">
                                    <div class="head_title">
                                        <h2 class="text-uppercase">EVENT <strong>OF THE YEAR</strong></h2>
                                    </div>
                                    <div class="choose_item_text fix">
                                        <h6><i class="fa fa-check-square-o"></i> 택배로 부탁해요</h6>
                                        <p>출간 기념 이벤트 리뷰 & 한줄평을 작성하고 페이스북에 좋아요 공유 추첨 통해 문상 증정 </p>
                                    </div>
                                    <div class="choose_item_text fix m-top-20">
                                        <h6><i class="fa fa-check-square-o"></i> 방콕 여행 더 쉽고 알차게</h6>
                                        <p>바콕 호텔 3박 이상 결제 고객중 경제금액 30만원 이상분들께 드립니다. 선착순 50명 </p>
                                    </div>
                                    <div class="choose_item_text fix m-top-20">
                                        <h6><i class="fa fa-check-square-o"></i> 올해의 과학책 도서 증정 이벤트</h6>
                                        <p>기간 내에 과학 도서를 구매하신 분들중 추첨을 통해 10분에게 도서3권을 드립니다. </p>
                                    </div>
                                    <!-- <div class="choose_item_text fix m-top-20">
                                        <h6><i class="fa fa-check-square-o"></i> 1일 1분 정리법</h6>
                                        <p>SNS에 이벤트를 공유하고 추첨을 통해 10분꼐 -1일 1분 정리법- 을 선물로 드립니다 </p>
                                    </div> -->
                                </div>
                            </div><!-- End off col-md-6 -->
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off choose section -->


            <!--Portfolio Section-->



            <section id="portfolio" class="portfolio margin-top-120">

                <!-- Portfolio container-->
                <div class="container">
                    <div class="row">
                        <div class="main-portfolio roomy-80">

                            <div class="col-md-4">
                                <div class="head_title text-left sm-text-center wow fadeInDown">
                                    <h2>HIGHLY RECOMMENDES BOOKS</h2>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="filters-button-group text-right sm-text-center">
                                    <button class="btn button is-checked" data-filter="*">전체</button>
                                    <button class="btn button" data-filter=".metal">MD 추천도서</button>
                                    <button class="btn button" data-filter=".ar">화제의 책</button>
                                </div>
                            </div>



                            <div style="clear: both;"></div>

                            <div class="grid text-center" id="result">

                                <div class="grid-item transition metal ium">
                                    <img alt="" src="http://image.aladin.co.kr/product/272/78/cover/8936433679_2.jpg">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-110">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-1.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->

                                <div class="grid-item metalloid " >
                                    <img alt="" src="http://image.aladin.co.kr/product/15848/6/cover/k622533431_1.jpg">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-180">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-2.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->

                                <div class="grid-item post-transition metal numberGreaterThan50">
                                    <img alt="" src="http://image.aladin.co.kr/product/29/99/cover/8973374117_1.jpg">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-50">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-3.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->

                                <div class="grid-item post-transition metal ium" >
                                    <img alt="" src="https://bookthumb-phinf.pstatic.net/cover/013/434/01343405.jpg?type=m1&udate=20071117">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-180">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-4.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->

                                <div class="grid-item metal ar" >
                                    <img alt="" src="http://image.aladin.co.kr/product/14712/55/cover/k202532053_1.jpg">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-110">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-5.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->

                                <div class="grid-item alkali ar" >
                                    <img alt="" src="http://image.aladin.co.kr/product/50/20/cover/8957090258_1.gif">
                                    <div class="grid_hover_area text-center">
                                        <div class="girid_hover_text m-top-50">
                                            <h4 class="text-white">Your Work Title</h4>
                                            <p class="text-white">- Business Card, Branding</p>
                                            <a href="assets/images/porfolio-6.jpg" class="btn btn-primary popup-img">View Project</a>
                                        </div>
                                    </div><!-- End off grid Hover area -->
                                </div><!-- End off grid item -->
                            </div>
                            <div style="clear: both;"></div>
                        </div>
                    </div>
                </div><!-- Portfolio container end -->
            </section><!-- End off portfolio section -->

            <!--Test section-->
            <section id="test" class="test bg-grey roomy-60 fix">
                <div class="container">
                    <div class="row">                        
                        <div class="main_test fix">
                            <div class="col-md-6">
                                <div class="cbrand text-center">
                                    <div class="divider_horizontal"></div>
                                    <div class="divider_vertical"></div>
                                    <div class="col-xs-6">
                                        <div class="cbrand_item">
                                            <img src="assets/images/star/1.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="cbrand_item">
                                            <img src="assets/images/star/10.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="cbrand_item m-top-40">
                                            <img src="assets/images/star/5.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="cbrand_item m-top-40">
                                            <img src="assets/images/star/800x0.jpg" alt="" />
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-6 sm-m-top-40">
                                <div class="test_item1 fix ">
                                    <div class="head_title fix">
                                        <h2 class="text-uppercase">Rising Star <strong> Recommended Books</strong></h2>
                                    </div>
                                    <div class="item_img">
                                        <img class="img-circle" src="assets/images/star/common.jpg" alt="" />
                                        <i class="fa fa-quote-left"></i>
                                    </div>

                                    <div class="item_text">
                                        <h5>Alain de Botton</h5>
                                        <h6>envato.com</h6>

                                        <p>What kill us isn’t one big thing,
											but thousands of tiny obligations
											we can’t turn down for fear of disappointing others.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End off test section -->
 
 	   <script type="text/javascript" src="/assets/js/board/js/jquery.ajax-cross-origin.min.js"></script>
       <script>    
      //인기 대출 도서 api(정보나루)
      $(function Popularbooks(){
    	  
       let result = $("");

   	   $.ajax({ 
   	    	crossOrigin : true,
   	    	url: "http://data4library.kr/api/loanItemSrch?authKey=7005ece19af1a6fef5c5c2415a002da8d094906b46fd7fee08525d0a12d15b11&format=json",    	
   	    	type: "GET",
   	    	dataType: 'jsonp', 
   	    	jsonpCallback: "myCallback", 
   	    	data : {
   	    		pageSize : "6"
   	    	},
   	    	success:function(data){
   	    		console.log(data);

            let str = "";
    		$.each(data.response.docs, function(i, item){
    		    // index(i) 에는 배열의 인덱스 (0 부터 시작)
    		    // el 에는 각각의 배열 요소를 말한다 ex) 첫번째 실행되는 콜백의 el 은 배열[0] 이 된다

    		})
	
    	result.append(str);
    	
    	/* result.attr(str); */
    	
   		//result.html(str);

   	    		
   	    	},
   	    	error: function (xhr,txtStatus,error){        
   	        	alert(xhr.status);
   	        }    	 
   	    });	   

      })
      
      //도서 검색
		$("#booksearch").keydown(function(key) {
			if (key.keyCode == 13) {
				var thisText = $('#booksearch').val();  // 검색한 단어

				if(thisText == ''){
					alert('검색어가 없습니다.');
					
				}else {
					/* location.href = "/shop/mainsearch"; */
					window.location.href = ("${pageContext.request.contextPath}/shop/shopSearch?keyword=" + encodeURIComponent(thisText));
					
				}
			}

		});

		</script>

            <footer id="contact" class="footer action-lage bg-black p-top-80">
                <!--<div class="action-lage"></div>-->
                <div class="container">
                    <div class="row">
                        <div class="widget_area">
                            <div class="col-md-3">
                                <div class="widget_item widget_about">
                                    <h5 class="text-white">About Us</h5>
                                    <p class="m-top-30">Lorem ipsum dolor sit amet consec tetur adipiscing elit 
                                        nulla aliquet pretium nisi in cursus 
                                        maecenas nec eleifen.</p>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-location-arrow"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Location</h6>
                                            <p>
                                                123 suscipit ipsum nam auctor
                                                mauris dui, ac sollicitudin mauris,
                                                Bandung</p>
                                        </div>
                                    </div>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-phone"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Phone :</h6>
                                            <p>+1 2345 6789</p>
                                        </div>
                                    </div>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-envelope-o"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Email Address :</h6>
                                            <p>youremail@mail.com</p>
                                        </div>
                                    </div>
                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_latest sm-m-top-50">
                                    <h5 class="text-white">Latest News</h5>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-1.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-2.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-3.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_service sm-m-top-50">
                                    <h5 class="text-white">Latest News</h5>
                                    <ul class="m-top-20">
                                        <li class="m-top-20"> <a href="#"><i class="fa fa-angle-right"></i> Web Design</a></li>
                                        <li class="m-top-20"> <a href="#"><i class="fa fa-angle-right"></i> User Interface Design</a></li>
                                        <li class="m-top-20"> <a href="#"><i class="fa fa-angle-right"></i> Web Hosting</a></li>
                                        <li class="m-top-20"> <a href="#"><i class="fa fa-angle-right"></i> Themes</a></li>
                                        <li class="m-top-20"> <a href="#"><i class="fa fa-angle-right"></i> Support Forums</a></li>
                                    </ul>

                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_newsletter sm-m-top-50">
                                    <h5 class="text-white">Newsletter</h5>
                                    <form class="form-inline m-top-30">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Enter you Email">
                                            <button type="submit" class="btn text-center"><i class="fa fa-arrow-right"></i></button>
                                        </div>

                                    </form>
                                    <div class="widget_brand m-top-40">
                                        <a href="" class="text-uppercase">Your Logo</a>
                                        <p>Lorem ipsum dolor sit amet consec tetur 
                                            adipiscing elit nulla aliquet pretium nisi in</p>
                                    </div>
                                    <ul class="list-inline m-top-20">
                                        <li>-  <a href=""><i class="fa fa-facebook"></i></a></li>
                                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href=""><i class="fa fa-behance"></i></a></li>
                                        <li><a href=""><i class="fa fa-dribbble"></i></a>  - </li>
                                    </ul>

                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->
                        </div>
                    </div>
                </div>
                <div class="main_footer fix bg-mega text-center p-top-40 p-bottom-30 m-top-80">
                    <div class="col-md-12">
                        <p class="wow fadeInRight" data-wow-duration="1s">
                            Made with 
                            <i class="fa fa-heart"></i>
                            by 
                            <a target="_blank" href="http://bootstrapthemes.co">Bootstrap Themes</a> 
                            2016. All Rights Reserved
                        </p>
                    </div>
                </div>
            </footer>
        </div>

        <!-- JS includes -->

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery.magnific-popup.js"></script>
        <!--<script src="assets/js/jquery.easypiechart.min.js"></script>-->
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <!--<script src="assets/js/slick.js"></script>-->
        <script src="assets/js/slick.min.js"></script>
        <script src="assets/js/js.isotope.js"></script>
        <script src="assets/js/jquery.collapse.js"></script>
        <script src="assets/js/bootsnav.js"></script>

        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>















