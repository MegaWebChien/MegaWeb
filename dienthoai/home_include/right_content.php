 <div id="dangnhap">
					<div class="center1" >
						<h4>ĐĂNG NHẬP</h4>
						<?php if(isset( $_SESSION['username'])){
							?>
								<div id="dangnhap-in">
								<span id="xinchao"><p>Xin chào: <span> <?php echo $_SESSION['username'] ?> </span></p></span>
								<span id="logout"><p><a href="logout.php">Logout</a></p></span>
						</div><!-- End .dangnhap-in-->
							<?php 
						}
						else{
						?>
						<div id="dangnhap-in">
							<form action="dangnhap.php" method="post">
								<span><p>Username: <input type="text" size="10" name="user"></p> <br>
								<p>Password: <input type="password" size="10" name="pass"></p> <br></span>
								<a href="index.php?content=dangnhap"><button name="login">Đăng nhập</button></a><br>
							</form>
							<ul>
								<li><a href="index.php?content=dangky">Đăng ký</a></li>
							</ul>
						</div><!-- End .dangnhap-in-->
						<?php } ?>
					</div><!-- End .center1-->						
				<div id="timkiem">
					<div class="center1">
						<h4>TÌM KIẾM </h4>
							<div id="select">
								<form action="index.php?content=timkiem" method="GET">
								<input type="hidden" name="content" value="timkiem">
								<input type="text" name="timkiem" />
								<div id="select2">
									<select name="gia">
										<option value="0"> - Chọn giá - </option>
										<option value="1">  < 1.000.000</option>
										<option value="2">1.000.000 - 3.000.000</option>
										<option value="3">3.000.000 - 5.000.000</option>
										<option value="4">5.000.000 - 8.000.000</option>
										<option value="5">8.000.000 - 10.000.000</option>
										<option value="6"> > 10.000.000</option>
									</select>
									<input type="submit" name="btntk" value="Tìm kiếm" />
								</form>
								</div><!-- End .select2-->
							</div><!-- End .select-->
						
					</div><!-- End .center1-->
				
				
				<div id="goinong">
					<div class="center1">
						<h4>HOTLINE</h4>
						<h2><img src="img/goinong.png" width="160" height="80"></a></h2>
							<p>0912345678</p>
						<h2><img src="img/anhemmega.jpg" width="180" height="170"></a></h2>
							<h3>MeGa Chiến</h3>
					</div><!-- End .center1-->
				</div><!-- End .yahoo -->
</div><!-- dang nhập-->	
						