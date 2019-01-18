<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Desi Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- .css files -->
	<link href="css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/nstyle.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Ropa+Sans:400,400i&amp;subset=latin-ext" rel="stylesheet">
<!-- //fonts -->
<!-- scrolling script -->
<script type="text/javascript">
	/* jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	}); */
</script>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
	<div class="top-main">
		<div class="number">
			<h3><i class="fa fa-phone" aria-hidden="true"></i> +91 080 987 6541</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		  <form action="#" method="post" class="navbar-form navbar-left">
			<div class="form-group">
				<input type="search" class="form-control" placeholder="Search">
			</div>
				<button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
				<!-- <button type="submit" class="btn btn-default">Submit</button> -->
			</form>
		</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
	</div>
		<!-- Top-Bar -->
		<div class="top-bar">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#index.html" class="scroll">home</a></li>
							<li><a href="#services" class="scroll">services</a></li>
							<li><a href="${pageContext.request.contextPath}/customer-app-status.jsp">Status</a></li>
							<li><a href="#team" class="scroll">team</a></li>
							<li><a href="#payment" class="scroll">payment</a></li>
							<li><a href="#blog" class="scroll">blog</a></li>
							<li><a href="#contact" class="scroll">contact</a></li>
							<li>
								<a href="javascript:openLoginPage();" class="scroll" data-toggle="modal">login</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo" style="text-align: left;margin-top: -50px;z-index:100;position: relative;width: 200px;">
			
			<img alt="" src="images/logo.jpg" style="height: 80px;"><a href="index.html"><!--<i class="fa fa-inr" aria-hidden="true"></i>--> <span style="color: black;font-size: 24px;" >DesiBank</span>
			</a>
		</div>
		<!-- //Top-Bar -->
		<div class="banner-main jarallax">
			<div class="container">
				<div class="banner-inner">
					<div class="col-md-5 banner-left">
						 <span style="font-size: 18px;" id="ApplicationMessage">
									 ${param.message}
						 </span>
						<form id="savingAccountForm">
						<h3>Start savings account</h3>
							<input type="text" placeholder="Full name" required="" name="name"/>
							<input type="email" placeholder="Your mail" required="" name="email" id="eemail"/>
							<input type="tel" placeholder="Phone number" required="" name="mobile"/>
							<!-- 	<input type="text" placeholder="Location" required="" name="location"/> -->

							<select id="location" name="location" style="height:30px;width: 250px;">
							</select>
							<div class="submit">
								<input type="button" value="get started"  
								id="savingAccount">
							</div>
						</form>
					</div>
					<div class="col-md-7 banner-right">
						<h1>Account Processing Steps !</h1>
						<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquet venenatis vehicula. Etiam malesuada arcu metus, sollicitudin ullamcorper leo lobortis ut.</h4>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>	
							<div class="clearfix"></div>
							</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>


<!-- services -->
<section class="services" id="services">
	<div class="container">
		<div class="services-heading">
			<h3>services</h3>
		</div>
		<div class="service-grids">
			<div class="service-grid-top">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-usd" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-university" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service-grid-bottom">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-handshake-o" aria-hidden="true"></i></div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</section>
<!-- //services -->

<!-- clients -->
<section class="skills" id="skills">
	<div class="container">
		<div class="skills-heading">
			<h3>Our growth</h3>
		</div>
		<div class="col-md-2 career-growth">
			<h4>2017 :</h4>
			<h4>2015 :</h4>
			<h4>2011 :</h4>
			<h4>2006 :</h4>
			<h4>2001 :</h4>
		</div>
		<section class='col-md-10 bar'>
			  <div class='bar_group'>
				<div class='bar_group__bar thin' value='675'></div>
				<div class='bar_group__bar thin' value='500'></div>
				<div class='bar_group__bar thin' value='420'></div>
				<div class='bar_group__bar thin' value='343'></div>
				<div class='bar_group__bar thin' value='245'></div>
			  </div>
			<div class='clearfix'></div>
		</section>
			<div class='clearfix'></div>
	</div>
</section>
<!-- //clients -->

<!--team-->
<div class="team" id="team">
	<div class="container">
		<h4 class="title-w3">Team</h4>
		<div class="team-grids">
		<div class="col-md-3 team-gds wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t1.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>michael</h4>
			<p>CEO</p>
		</div>
		<div class="col-md-3 team-gds wow fadeInUp animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t2.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>johnson</h4>
			<p>Manager </p>
		</div>
		<div class="col-md-3 team-gds wow fadeInDown animated three" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t3.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>corbin</h4>
			<p>Director </p>
		</div>
		<div class="col-md-3 team-gds wow fadeInRight animated four" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t4.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>ferdan</h4>
			<p>Chair man </p>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
</div>
<!--//team-->

<!-- payment -->
<section class="payment jarallax" id="payment">
	<div class="container">
		<div class="payments-heading">
			<h3>Our Payments</h3>
		</div>
		<div class="payment-grids">
		<div class="col-md-3 payment-grid">
			<i class="fa fa-cc-visa" aria-hidden="true"></i>
			<h5>visa card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa credit fa-credit-card-alt" aria-hidden="true"></i>
			<h5>credit card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa fa-cc-mastercard" aria-hidden="true"></i>
			<h5>master card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
			<h5>debit card</h5>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //payment -->

<!-- our blog -->
<section class="blog" id="blog">
	<div class="container">
		<div class="blog-heading">
			<h3>Our blog</h3>
		</div>
		<div class="blog-grids">
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b2.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 21/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">lorem ipsum</a></h4>
			<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet dictum libero.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b1.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 20/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">dolor sit</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b3.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 19/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">sit amet</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet.</p>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //our blog -->

<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="span1"aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title"> Corporate<span> Bank</span></h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/business.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //modal -->
	
<!-- contact -->
<section class="contact" id="contact">
	<div class="container">
		<div class="contact-heading">
			<h3>Contact us</h3>
		</div>
		<div class="contact-grids">
			<div class=" col-md-6 contact-form">
				<form action="#" method="post">
						<input type="text" placeholder="Subject" required=""/>
						<input type="text" placeholder="Your name" required=""/>
						<input type="email" placeholder="Your mail" required=""/>
						<textarea placeholder="Message" required=""></textarea>
						<div class="submit1">
							<input type="submit" value="submit">
						</div>
				</form>
			</div>
			<div class=" col-md-6 map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d167998.10803373056!2d2.2074740643680624!3d48.85877410312378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1f06e2b70f%3A0x40b82c3688c9460!2sParis%2C+France!5e0!3m2!1sen!2sin!4v1488168816174"></iframe>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //contact -->

<!-- footer -->
<section class="footer">
	<div class="container">
		<div class="footer-grids">
			<div class="col-md-4 footer-grid1">
				<div class="logo1">
					<a href="index.html">Corporate <span>Bank</span></a>
				</div>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
			</div>
			<div class="col-md-3 footer-grid2">
				<h4>Locations</h4>
				<p class="p1">Stoke Newington,London,</p>
				<p>Smith street,8814DM</p>
				<p class="p1">Paris,arrondissement</p>
				<p>on the Right Bank,2216TF</p>
				<p class="p1">Los Vegas,Nevada,</p>
				<p>Eiffel Tower road,2243FR</p>
			</div>
			<div class="col-md-2 footer-grid3">
				<h4>menu</h4>
					<p><a href="#index.html" class="scroll">home</a></p>
					<p><a href="#about" class="scroll">about</a></p>
					<p><a href="#services" class="scroll">services</a></p>
					<p><a href="#skills" class="scroll">skills</a></p>
					<p><a href="#team" class="scroll">team</a></p>
					<p><a href="#payment" class="scroll">payment</a></p>
					<p><a href="#blog" class="scroll">blog</a></p>
					<p><a href="#contact" class="scroll">contact</a></p>
			</div>
			<div class="col-md-3 footer-grid4">
				<h4>our links</h4>
				<p><a href="#">Funds transfer</a></p>
				<p><a href="#">Mobile banking</a></p>
				<p><a href="#">Deposits</a></p>
				<p><a href="#">New joint accounts</a></p>
				<p><a href="#">Internet online banking</a></p>
				<p><a href="#">Balance enquiry</a></p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //footer -->

<!-- copyright -->
<section class="copyright">
	<div class="agileits_copyright text-center">
			<p>� 2017 Corporate Bank. All rights reserved | Design by <a href="//w3layouts.com/" class="w3_agile">W3layouts</a></p>
	</div>
</section>
<!-- //copyright -->

	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	
	<script type="text/javascript">
	 var contextPath="${pageContext.request.contextPath}";
	</script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	  function openLoginPage() {
		  	$("#errorMessage").html("");
		  	$("#unblockButton").hide();
			$("#loginModel").modal("show");
	  }
	  
	  /* function openUnblockPage() {
		  	$("#errorMessage").html("");
		  	//$("#unblockButton").hide();
			$("#unblockModel").modal("show");
	  } */
	  
	  function loadCity(){
	  		 $.getJSON(contextPath+"/v1/customer/cities", function(result){
	  		     	var $dropdown = $("#location");
	  		     	$.each(result, function() {
	  		     	    $dropdown.append($("<option />").val(this.name).text(this.name));
	  		     	});
	  		});
	  		
	  	}
	
		$(document).ready(function() {
			var userid;
        	var answerId1;  
        	var answerId2;
        	
			loadCity();
			$("#savingAccount").click(function(){
				  console.log("_@@)@)@)@)@(@(@&&&&&&&&&&&&&&&&&&&))");
				  //http://localhost:8080/desibank-web/	
				  var contextPath="${pageContext.request.contextPath}";
				  //FormData
				  //submiting whole Form data through ajax
				  //$("#savingAccountForm").serialize()
				   //name="Nagendra"& email="nagen@synergisticit.com"
				    //Here we are sending our data as html form data
					$.ajax({url:contextPath+"/customer/savingAccountWithAjax.htm", type: 'POST',data:$("#savingAccountForm").serialize(),success:function(data) {  //data= this.responseText
						//data is JavaScript object against JSON response coming fromm the server
							console.log(data); // success = is values coming from the server
							if(data=='success') {
								$("#ApplicationMessage").html("Hello! your saving account form request has been submitted successfully.... ");
								$("#savingAccountForm")[0].reset(); // this is called resetting using jQuery 
							}else if(data=='exist') {
								$("#ApplicationMessage").html("This email already exist for other the customer saving account enquiry.... ");
								$("eemail").focus();
							}else{
								$("#ApplicationMessage").html("Error occures during the form processing.... ");
							}
					} //end of function
				});	 //end of the ajax			
			});
			
			
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			 $("input").keyup(function(event){
				    if(event.keyCode == 13){
				        $("#loginButton").click();
				    }
				});
			
			$("input[type='text'][id='userid']").keyup(function(){
					$("#errorMessage").html("");
			});
			
			$("input[type='password'][id='password']").keyup(function(){
					$("#errorMessage").html("");
			});
			
			$("#loginButton").click(function(){
					userid=$("input[type='text'][id='userid']").val();
					if(userid.length==0) {
						$("#errorMessage").html("Userid cannot be blank.....");
						$("input[type='text'][id='userid']").focus();
						return;
					}
					var password=$("input[type='password'][id='password']").val();
					if(password.length==0) {
						$("#errorMessage").html("Password cannot be blank.....");
						$("input[type='password'][id='password']").focus();
						return;
					}
					//This code will execuete only when userid and password are not blank
					///$("#loginForm").submit();
					//Here we have to make  ajax call...
					//I want to submit my login form 
					$.ajax({type : "POST",
                        url : "${pageContext.request.contextPath}/j_spring_security_check",
                        data : $("#loginForm").serialize(),
                        success : function(response) {
               		    // jsonResponse="{\"status\": \"0\", \"message\":\"Hey this user does not exit into our database\", \"noOfAttempt\" :0}";	
                       		 	console.log(response);
                       		 	if(response=="ok") {
                       		 		window.location.href = "${pageContext.request.contextPath}/homePage.htm";
                       		 	}
                       		 	else if(response.status=="1") {
                        			$("#errorMessage").html(response.message+" and you have only "+response.noOfAttempt+" attempts left.");
                        		}
                       		 	else if(response.status=="2") {
                       		 		$("#errorMessage").html(response.message);
	                   		 		$("#unblockButton").show();
                       		 	}
                       		 	else{
                        			$("#errorMessage").html(response.message);
                        		}
                            return;
                        },  
                        error : function(response) {
                        		//you can show error popup...
                        }
                    }); 
			});
			
			$("#unblockButton").click(function(){
				$("#otp").hide();
				//alert("userid = "+userid);
				$.ajax({type: "GET",
					 url : contextPath+"/v1/customer/questions/"+userid,
                     dataType: 'json',
                   /*   contentType: 'application/json; charset=utf-8', */
                     success : function(response) {
                    	//console.log(response);
                    	
                    	answerId1 = response[0]["id"];
                    	answerId2 = response[1]["id"];
                    	//console.log("answerId1: " + answerId1)
                    	//console.log("answerId2: " + answerId2);
                    	
                    	$("#question1").html(response[0]["question"]);
                    	$("#question2").html(response[1]["question"]);
                  
						$("#loginModel").modal("hide");
						$("#unblockModel").modal("show");
                     }
				});				
			});
			
			$("#unblockBtn").click(function(){
				var a1 = $("#answer1").val();
				var a2 = $("#answer2").val();
				console.log("a1: " + a1);
				console.log("a2: " + a2);
				
				/* var answer1 = {};
				answer1[answerId1] = a1;
				var answer2 = {};
				answer2[answerId2] = a2; */
				var answers = {[answerId1]:a1,[answerId2]:a2}; 
				
				$.ajax({type: "POST",
						 url : contextPath+"/v1/customer/answers",
						 //data : JSON.stringify({"userId": userid, "answers": {{[answerId1]: a1}, {[answerId2]: a2}}}),
	                     data : JSON.stringify({"userId": userid, answers}),
						 dataType: 'json',
	                     contentType: 'application/json; charset=utf-8',
	                     success : function(response) {
	                   	 	console.log(response);
                   	
	                   	 	if(response.status === "success") {
	                   	 		$("#otp").show();
	                   	 	}
                    	}
				});				
			});
		});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/bars.js"></script>
	<script type="text/javascript">
	function InvalidMsg(textbox) {
	     if(textbox.length==0){
	        textbox.setCustomValidity('please enter your userid.');
	    }    
	    else {
	        textbox.setCustomValidity('');
	    }
	    return true;
	}
	
	</script>
	
  <!-- Modal -->
  <div class="modal fade" id="loginModel" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
     	<div>
			<div class="container">
				<div>
					<div class="col-md-5">
						<form id="loginForm" action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
							 <img src="images/login.png" style="display: inline;"/><h5 class="modal-title" style="display: inline;font-size: 16px;">Login</h5>
							 <br/>
							 <br/>
							<span id="errorMessage" style="color: red;font-size: 15px;"></span> 
							<table>
							
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Username</td>
									<td><input type="text"  id="userid" name="j_username" class="form-control"  style="background-color: #d9edf7;margin-left: 20px;width: 350px;color:black;"></td>
								</tr>
								
									<tr>
									<td colspan="2" id="userError">&nbsp;</td>
								</tr>
								<tr>
									<td>Password</td>
									<td><input type="password"  id="password"   name="j_password" class="form-control" style="background-color: #d9edf7;margin-left: 20px;width: 350px;color:black;" ></td>
								</tr>
								<tr>
									<td colspan="2" id="passwordError">&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;
										<input type="button" name="login" style=" color: #FFFFFF;
										    background: #ffb900;
										    border: 2px solid #ffb900;
										    text-transform: uppercase;
										    padding: .2em 1em;
										    font-size: 1.3em;
										    font-family: 'Ropa Sans', sans-serif;" value="Login"  id="loginButton">
									</td>
    								<td>
										<input type="button" name="login" style=" color: #FFFFFF;
										    background: #ffb900;
										    border: 2px solid #ffb900;
										    text-transform: uppercase;
										    padding: .2em 1em;
										    font-size: 1.3em;
										    font-family: 'Ropa Sans', sans-serif;" value="Unblock"  id="unblockButton">
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
							</table>							
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
    </div>
  </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="unblockModel" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
     	<div>
			<div class="container">
				<div>
					<div class="col-md-5">
						<form id="unblockForm" action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
							 <img src="images/login.png" style="display: inline;"/><h5 class="modal-title" style="display: inline;font-size: 16px;">Unblock Account</h5>
							 <br/>
							 <br/>
							<span id="errorMessage" style="color: red;font-size: 15px;"></span>
							<p><h4>Security Questions:</h4></p> <br/>
							<table>	
								<tr>
									<td id='question1'  style="width: 350px;"></td>
									<td><input type="password"  id="answer1" name="answer1" class="form-control"  style="background-color: #d9edf7;width: 200px;color:black;"></td>
								</tr>
								
								<tr>
									<td colspan="2" id="userError2">&nbsp;</td>
								</tr>
								<tr>
									<td id='question2'  style="width: 350px;"></td>
									<td><input type="password"  id="answer2"   name="answer2" class="form-control" style="background-color: #d9edf7;width: 200px;color:black;" ></td>
								</tr>
								<tr>
									<td colspan="2" id="userError3">&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;
										<input type="button" name="unblockBtn" style=" color: #FFFFFF;
										    background: #ffb900;
										    border: 2px solid #ffb900;
										    text-transform: uppercase;
										    padding: .2em 1em;
										    font-size: 1.3em;
										    font-family: 'Ropa Sans', sans-serif;" value="Unblock"  id="unblockBtn">
									</td>
								 </tr>
							
								 <tr id='otp'>
								 	<td>End OTP <input type='text' name='unblock'></td>
    								<td>
										<input type="button" name="continue" style=" color: #FFFFFF;
										    margin: 5px;
										    background: #ffb900;
										    border: 2px solid #ffb900;
										    text-transform: uppercase;
										    padding: .2em 1em;
										    font-size: 1.3em;
										    font-family: 'Ropa Sans', sans-serif;" value="Continue"  id="continueButton">
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
							</table>							
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
    </div>
  </div>
  </div>
</body>
<!-- //Body -->
</html>
<!-- //html -->