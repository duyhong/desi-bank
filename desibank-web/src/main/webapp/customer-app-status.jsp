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
							<li><a href="index.jsp">home</a></li>
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
	

<!-- services -->
<section class="services" id="services">
	<div class="container" style="font-size: 15px;">
	 <p>
	 <img alt="" src="${pageContext.request.contextPath}/images/app-status.png" style="height: 120px;"/>Customer App Status</p>
	 
	 Enter App Ref : 
	 
	 <input type="text" id="apprefno" class="form-control" style="background-color: #d9edf7; margin-left: 0px; width: 250px; color: black;display: inline;"/>
	 
	 <input type="button" name="appstatus" style="color: #FFFFFF; background: #ffb900; border: 2px solid #ffb900; text-transform: uppercase; padding: .2em 1em; font-size: 1.3em; font-family: 'Ropa Sans', sans-serif;" value="Show Status" id="appstatus">
	<br/><br/>            
	<span id="emessage" style="font-size: 16px;font-weight: bold;color: red;">............####.........</span>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th id="sname"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Email</td>
        <td id="semail"></td>
      </tr>
      <tr>
        <td>Mobile</td>
        <td id="smobile"></td>
      </tr>
      <tr>
        <td>DOA</td>
        <td id="sdoa"></td>
      </tr>
      
      <tr>
        <td>Location</td>
        <td id="slocation"></td>
      </tr>
      
      <tr>
        <td>Current Status</td>
        <td id="sstatus"></td>
      </tr>
    </tbody>
  </table>
	
	</div>
</section>
<!-- //services -->


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
			<p>© 2017 Corporate Bank. All rights reserved | Design by <a href="//w3layouts.com/" class="w3_agile">W3layouts</a></p>
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
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {

			$("#apprefno").keyup(function(){
				 $("#emessage").html("");
			});
			$("#appstatus").click(function(){
				  	var contextPath="${pageContext.request.contextPath}";
				  	var apprefno=$("#apprefno").val();
				  	if(apprefno.length==0){
				        $("#emessage").html("please enter your app ref no.");
				        $("#apprefno").focus();
				        return;
				    }  
				  //contentpath/v1/customer/app/status?appRefNo=AS0292022
					$.ajax({url:contextPath+"/v1/customer/app/status?appRefNo="+apprefno, type: 'GET',success:function(data) {  //data= this.responseText
						console.log(data);
						if(!data.name){
						     $("#emessage").html("Hey this app ref "+apprefno+" is not valid!!!!!");
						}
						$("#sname").html(data.name);
						$("#semail").html(data.email);
						$("#sstatus").html(data.status);
						$("#sdoa").html(data.doa);
						$("#smobile").html(data.mobile);
						$("#slocation").html(data.location);
					} //end of function
				});	 //end of the ajax			
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
    font-family: 'Ropa Sans', sans-serif;" value="Login"  id="loginButton"></td>
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