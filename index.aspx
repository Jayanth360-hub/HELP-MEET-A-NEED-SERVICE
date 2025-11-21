<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NGOService.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <title>Smart NGO System</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Literature web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <!-- Flexslider-CSS -->
    <link href="css/mislider.css" rel="stylesheet" type="text/css" />
    <!-- Testimonials-CSS -->
    <link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
    <!-- Testimonials-CSS -->
    <!-- //css files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Athiti:200,300,400,500,600,700&amp;subset=latin-ext,thai,vietnamese"
        rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <!-- banner -->
    <div class="main-agile">
        <div class="banner">
            <div class="container">
                <div class="top-nav">
                    <nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<h1><a class="navbar-brand" href="#" style="margin-top: -22px;">Smart NGO System<span>Serve Recipient</span></a></h1>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a class="active" href="#">Home</a></li>
							<li><a href="Login.aspx">Login</a></li>
                            <li><a href="NGORegistration.aspx">NGO Registration</a></li>
                            <li><a href="DonorRegistration.aspx">Donor Registration</a></li>
						</ul>
						<div class="clearfix"> </div>							
					</div>	
				</nav>
                </div>
                <div class="w3l_banner_info">
                    <section class="slider">
					<div class="flexslider">
						<%--<ul class="slides">
							<li>
								<div class="wthree_banner_info_grid">
									<i class="fa fa-graduation-cap" aria-hidden="true"></i>
									
								</div>
							</li>
							<li>
								<div class="wthree_banner_info_grid">
									<i class="fa fa-graduation-cap" aria-hidden="true"></i>
									
								</div>
							</li>
							<li>
								<div class="wthree_banner_info_grid">
									<i class="fa fa-graduation-cap" aria-hidden="true"></i>
									
								</div>
							</li>
						</ul>--%>
					</div>
				</section>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!-- Grids -->
        <!-- //Grids -->
    </div>
    <!-- About -->
    <!-- //About -->
    <!-- services -->
    <!-- //services -->
    <!-- //mail -->
    <!-- footer -->
    <!-- //footer -->
    <!-- js-scripts -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <!-- Necessary-JavaScript-File-For-Bootstrap -->
    <!-- //js -->
    <!-- flexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
    <!-- //flexSlider -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- testimonial-plugin -->
    <script src="js/mislider.js" type="text/javascript"></script>
    <script type="text/javascript">
			jQuery(function ($) {
				var slider = $('.mis-stage').miSlider({
					//  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
					stageHeight: 320,
					//  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
					slidesOnStage: false,
					//  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
					slidePosition: 'center',
					//  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
					slideStart: 'mid',
					//  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
					slideScaling: 150,
					//  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
					offsetV: -5,
					//  Center slide contents vertically - Boolean. Default: false
					centerV: true,
					//  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
					navButtonsOpacity: 1,
				});
			});
    </script>
    <!-- //testimonial-plugin -->
    <!-- for-gallery -->
    <script type="text/javascript" src="js/jquery.hoverdir.js"></script>
    <script type="text/javascript">
        $(function () {

            $(' #da-thumbs > li ').each(function () { $(this).hoverdir(); });

        });
    </script>
    <!-- for-gallery-rotation -->
    <script src="js/modernizr.custom.97074.js"></script>
    <!--swipebox -->
    <link rel="stylesheet" href="css/swipebox.css">
    <script src="js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $(".swipebox").swipebox();
        });
    </script>
    <!-- //swipebox Ends -->
    <!-- //for-gallery-rotation -->
    <!-- //for-gallery -->
    <!-- smooth scrolling-bottom-to-top -->
    <script type="text/javascript">
        $(document).ready(function () {
            /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
            };
            */
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;">
    </span></a>
    <!-- //smooth scrolling-bottom-to-top -->
    <!-- js for Counter -->
    <script type="text/javascript" src="js/numscroller-1.0.js"></script>
    <!-- /js for Counter -->
    <!-- //js-scripts -->
</body>
</html>
