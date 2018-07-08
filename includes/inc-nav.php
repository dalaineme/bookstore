<body>
	<header id="header">
		<!--header-->
		<div class="header_top">
			<!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li>
									<a href="#">
										<i class="fa fa-phone"></i> +254 700 000 000</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-envelope"></i> info@ambabusiness.com</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li>
									<a href="#">
										<i class="fa"></i> Construction
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa"></i> Packaging Materials
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa"></i> Dry Foods
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header_top-->

		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="<?php echo SCRIPT_ROOT .''; ?>">
								<h3>Amba</h3>
								<!-- <img src="assets/images/amba/logo.png" height="60" alt="" /> -->
							</a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li>
									<a href="checkout.html">
										<i class="fa fa-crosshairs"></i> Checkout</a>
								</li>
								<li>
									<a href="cart.html">
										<i class="fa fa-shopping-cart"></i> Cart (20)</a>
								</li>
								<?php
									// If user is logged in
									if(!$_SESSION['UID'] == ''){
										?>
											<li>
												<a href="#"><i class="fa fa-user"></i> Account</a>
											</li>
											<li>
												<a href="#"><i class="fa fa-star"></i> Wishlist</a>
											</li> 
											<li>
												<a href="<?php echo SCRIPT_ROOT .'auth/logout'; ?>">
													<i class="fa fa-lock"></i> Logout
												</a>
											</li>
										<?php
									}else{
										?>
											<li>
												<a href="<?php echo SCRIPT_ROOT .'auth'; ?>">
													<i class="fa fa-lock"></i> Login | Signup
												</a>
											</li>
										<?php
									}
								?>								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li>
									<a href="index.html" class="active">Home</a>
								</li>
								<li class="dropdown">
									<a href="#">Shop
										<i class="fa fa-angle-down"></i>
									</a>
									<ul role="menu" class="sub-menu">
										<li>
											<a href="shop.html">Products</a>
										</li>
										<li>
											<a href="product-details.html">Product Details</a>
										</li>
										<li>
											<a href="checkout.html">Checkout</a>
										</li>
										<li>
											<a href="cart.html">Cahhrt (10)</a>
										</li>
										<li>
											<a href="login.html">Login</a>
										</li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#">Blog
										<i class="fa fa-angle-down"></i>
									</a>
									<ul role="menu" class="sub-menu">
										<li>
											<a href="blog.html">Blog List</a>
										</li>
										<li>
											<a href="blog-single.html">Blog Single</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="404.html">404</a>
								</li>
								<li>
									<a href="contact-us.html">Contact</a>
								</li>
								<?php
									// If user is logged in
									if(!$_SESSION['UID'] == ''){
										?>
											<li class="dropdown">
												<a href="#"><strong><?php echo $_SESSION['userFirstName']; ?>'s Account</strong>
													<i class="fa fa-angle-down"></i>
												</a>
												<ul role="menu" class="sub-menu">
													<li>
														<a href="blog.html">Profile</a>
													</li>
													<li>
														<a href="<?php echo SCRIPT_ROOT .'auth/logout'; ?>"><strong>Logout</strong></a>
													</li>
												</ul>
											</li>
										<?php
									}
								?>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->