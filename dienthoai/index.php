<base href="http://localhost/MegaWeb/dienthoai/" />
<?php 
session_start();
include("include/connect.php");?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<html xmlns:fb="http://ogp.me/ns/fb#">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mega Web </title>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/mainpage.css">



<link rel="stylesheet"  href="slide/engine/style.css">
<script type="text/javascript" src="slide/engine/wowslider.js"></script>
<script type="text/javascript" src="slide/engine/wowslider.mod.js"></script>




<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<!-------------------------------------Slide tài trợ-------------------------------------->

<script src="js/newsScrollerDefault-rightToleft-bottomTotop.js" type="text/javascript"></script>
<script src="js/newsScrollerEdit-leftToright-topTobottom.js" type="text/javascript"></script>


<!-------------------------------------zoom anh-------------------------------->
<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />



<!-------------------------------------Tabs-------------------------------->
<script>

// Wait until the DOM has loaded before querying the document

$(document).ready(function(){

$('ul.tabs').each(function(){

// For each set of tabs, we want to keep track of

// which tab is active and it's associated content

var $active, $content, $links = $(this).find('a');

// If the location.hash matches one of the links, use that as the active tab.

// If no match is found, use the first link as the initial active tab.

$active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);

$active.addClass('active');

$content = $($active.attr('href'));

// Hide the remaining content

$links.not($active).each(function () {

$($(this).attr('href')).hide();

});

// Bind the click event handler

$(this).on('click', 'a', function(e){

// Make the old tab inactive.

$active.removeClass('active');

$content.hide();

// Update the variables with the new link and content

$active = $(this);

$content = $($(this).attr('href'));

// Make the tab active.

$active.addClass('active');

$content.show();

// Prevent the anchor's default click action

e.preventDefault();

});

});

});

</script>

<!-------------------------------------slide-------------------------------->
<link rel="stylesheet"  href="css/style1.css">
<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
 $(document).ready( function(){	
		var buttons = { previous:$('#lofslidecontent45 .lof-previous') ,
						next:$('#lofslidecontent45 .lof-next') };
						
		$obj = $('#lofslidecontent45').lofJSidernews( { interval : 4000,
												direction		: 'opacitys',	
											 	easing			: 'easeInOutExpo',
												duration		: 2000,
												auto		 	: true,
												maxItemDisplay  : 4,
												navPosition     : 'horizontal', // horizontal
												navigatorHeight : 32,
												navigatorWidth  : 80,
												mainWidth:1000,
												buttons			: buttons} );	
	});
</script>
</head>
<body style="background:white">
<div id="wapper">
	<div id="header">
		<div id="lg-header">
			<img id="img" src="img/MegaWeb.gif" alt="" width="144" height="115">
		</div>
		
		<!-- End .bg-lg-header -->
		<div id="bg-header">	
		<div id="giohang" >
					<div class="center3" >
						
							<a href="index.php?content=cart"><img src="img/giohang1.png" title="Vào giỏ hàng" width="30" height="30px" style="margin-top: 154px;"></a>
							<?php 
								$tongtien=0;
								if(isset($_SESSION['cart']))
								$count=count($_SESSION['cart']);
								else $count=0;
								if($count==0){
							?>
							<p>Không có sản phẩm</p>
							<?php } 
							else {
							?>
							<p id="soluonggioh ang"style="color:red;">Có <span><?=$count?></span> sản phẩm trong giỏ</p>
							 
							
							

          
					<?php } ?>		
							
					</div><!-- End .center3-->
				</div><!-- End .giohang-->
		</div><!-- End .bg-header -->
			<div id="menu-header">
				
			<?php include("home_include/menu_ngang.php"); ?>
				<!-- End .menu -->
			</div><!-- End .menu-header -->
			
			
							
					</div><!-- End .center1-->
				



	
	<div id="content">
		<div id="lofslidecontent45" class="lof-slidecontent" style="width:99%; height:350px;">
			<div class="preload"><div></div></div>
				<div id="lof-main-outer">
					<ul class="lof-main-wapper">
						<li><img src="img/slide/silde3.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide2.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide1.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide4.jpg" width="1000" height="350"></li>
						<li><img src="img/slide/slide.jpg" width="1000" height="350"></li>
					</ul>
				</div>
				<div class="lof-navigator-wapper">

					<div onClick="return false" href="" class="lof-next">Next</div>
					  <div class="lof-navigator-outer">
							<ul class="lof-navigator">
							   <li><img src="img/slide/silde3.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/slide2.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/slide1.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/slide4.jpg" width="70" height="25" /></li>       		
							   <li><img src="img/slide/slide.jpg" width="70" height="25" /></li>       		
							</ul>
					  </div>
					<div onClick="return false" href="" class="lof-previous">Previous</div>
				</div> 
		</div>
		<div id="main-content">
			<div id="left-content">
				<?php include("home_include/left_content.php");?>
			</div><!-- End .left-content -->
			
			<div id="center-content">
				
				<?php include("content_page.php"); ?>
				<!-------------------------------------------------------------------------------------------------------------------->
					
				
			</div><!-- End .center-content -->
			
			<div id="right-content">
				<?php include("home_include/right_content.php"); ?>
			</div><!-- End .right-content-->
		</div><!-- End .main-content -->
		
	</div><!-- End .content -->
	<div id="footer">
		
		<div id="bg-footer">
			<div id="noidungfooter">
				<div id="lg-footer">
				
				</div><!-- End .lg-footer -->
				<div id="noidung">
					<ul>
						<li><span id="tencongty">Công Ty MegaWeb</span></li> <br>
						
						<li>Địa chỉ: Trần Phú - Nha Trang </li>
						<li>Điện thoại: 0911495728 - Hotline:  0258111111</li>
						<li>Email:  dienthoaiabc1@gmail.com</li>
					</ul>
				</div><!-- End .noidung -->
				<div id="thanhngang">
					<img src="img/thanhngang-footer.png">
				</div><!-- End .thanhngang -->
				<div id="copyright">
					<p>Nhóm MegaWeb | Lớp : 60CNTT2<p>
				</div><!-- End .copyright -->
				
			</div><!-- End .noidungfooter -->
			<div class="sildeShow">
								<ul id="random">
									<li> 
										<a href="#"><img id="img" src="img/apple.jpg" width="100" height="80" alt="Sam Sung" title="Sam Sung" /></a>
									</li>
									<li> 
										<a href="#"><img id="img"  src="img/samsung.jpg" width="100" height="80" alt="Sam Sung" title="Sam Sung" /></a>
									</li>
										<li> 
										<a href="#"><img id="img"  src= "img/oppo.jpg"width="100" height="80" alt="Sam Sung" title="Sam Sung" /></a>
									</li>
										<li> 
										<a href="#"><img id="img"  src="img/huaweii.png"  width="100" height="80" alt="Sam Sung" title="Sam Sung" /></a>
									</li>
								</ul>
							</div><!--End .sildeShow-->
		</div><!-- End .bg-footer -->
	</div><!-- End .footer -->
</div><!-- End .wapper -->
</body>
</html>