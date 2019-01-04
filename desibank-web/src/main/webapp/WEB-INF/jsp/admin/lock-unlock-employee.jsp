<%@page import="org.bouncycastle.util.encoders.Base64Encoder"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
	<link href="${pageContext.request.contextPath}/css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nstyle.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Ropa+Sans:400,400i&amp;subset=latin-ext" rel="stylesheet">
<!-- //fonts -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //scrolling script -->

<style>
.zoom {
    padding: 4px;
    transition: transform .2s; /* Animation */
    height: 80px;
    margin: 0 auto;
}

.zoom:hover {
    transform: scale(2.0); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}
</style>
</head>
<!-- //Head -->
<!-- Body -->
<body>
		<jsp:include page="top-bar.jsp"/>
		<!-- Top-Bar -->
	
<jsp:include page="admin-menu.jsp"/>
<!--team-->
<jsp:include page="dashboard-options.jsp"/>
<!--//team-->

<!-- our blog -->
<section class="blog" id="blog">
	<div class="container">
		<div class="blog-heading">
			<h3  style="text-align: left;" >Bank Employees</h3>
		</div>
		
		<span id="message" style="color:green;font-size:16px;"></span>
		<table class="table table-bordered">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Userid</th>
        <th>Email</th>
          <th>jobTitle</th>
           <th>qualification</th>
           <th>image</th>
            <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerForms}" var="item">
      <tr>
        <td>${item.name}</td>
        <td>${item.userid}</td>
        <td>${item.email}</td>
        <td>${item.jobTitle}</td>
        <td>${item.qualification}</td>
        <td>
        <%-- <img class="zoom" src="${pageContext.request.contextPath}/findImageByUserid.htm?userid=${item.userid}" style="height: 80px;"/> --%>
        <img class="zoom"  src="data:image/png;base64,${item.photoName}" style="height: 80px;"/>
        </td>
       <td>
       
       <a href="javascript:lockunlock('${item.userid}',${item.id});">
            <img  src="${pageContext.request.contextPath}/images/icon/${item.locked=='yes'?'lock.png':'unlocked.png'}" id="lockunlockimg_${item.id}">
       </a>
       </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
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
	

<!-- footer -->
<jsp:include page="../common/footer.jsp"/>
<!-- //footer -->

<!-- copyright -->
<jsp:include page="../common/copyright.jsp"/>
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

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
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
	<!-- //here ends scrolling icon -->
	<script src="js/bars.js"></script>
	<script type="text/javascript">

	function lockunlock(userid,rowid){
		//alert("userid = "+userid);
		//This is logic
		var src=$("#lockunlockimg_"+rowid).attr("src");
		var path="${pageContext.request.contextPath}/images/icon/unlocked.png";
		var status="no";
		if(src.endsWith("unlocked.png")){
		   path="${pageContext.request.contextPath}/images/icon/lock.png";
		   status="yes";
		}
	 	var contextPath="${pageContext.request.contextPath}";
	   //contentpath/v1/customer/app/status?appRefNo=AS0292022
		$.ajax({url:contextPath+"/v1/admin/lock-unlock?userid="+userid+"&status="+status, type: 'GET',success:function(data) {  //data= this.responseText
				console.log(data);
				$("#lockunlockimg_"+rowid).attr("src",path);
				$("#message").html(data.message);
			} //end of function
		});	 //end of the ajax	
	}
	
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
						<form id="loginForm" action="validate.htm" method="post">
							 <img src="${pageContext.request.contextPath}/images/login.png" style="display: inline;"/><h5 class="modal-title" style="display: inline;font-size: 16px;">Login</h5>
							<table>
							
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Username</td>
									<td><input type="text" name="userid" class="form-control" required="" style="background-color: #d9edf7;margin-left: 20px;width: 350px;color:black;"  oninvalid="InvalidMsg(this);"></td>
								</tr>
								
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Password</td>
									<td><input type="password" required="" name="password" class="form-control" style="background-color: #d9edf7;margin-left: 20px;width: 350px;color:black;" ></td>
								</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
									<tr>
									<td>&nbsp;</td>
									<td>&nbsp;
									<input type="submit" name="login" style=" color: #FFFFFF;
    background: #ffb900;
    border: 2px solid #ffb900;
    text-transform: uppercase;
    padding: .2em 1em;
    font-size: 1.3em;
    font-family: 'Ropa Sans', sans-serif;" value="Login"></td>
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