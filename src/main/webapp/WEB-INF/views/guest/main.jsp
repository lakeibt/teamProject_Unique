<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<body>

  <%@ include file = "../include/header.jsp" %>

  <!-- ======= Hero Section ======= -->
	<section id="hero"
		class="d-flex justify-cntent-center align-items-center">
		<div id="heroCarousel" class="container carousel carousel-fade"
			data-ride="carousel">

			<!-- Slide 1 -->
			<div class="carousel-item active">
				<div class="carousel-container">
					<h2 class="animated fadeInDown">
						서울대에 오신것을 환영합니다<span>.</span>
					</h2>
					<p class="animated fadeInUp">
						급변하는 국내외 환경 속에서 대학들은 여러 가지 도전에 직면하고 있습니다.</br> 서울대학교는 세계를 선도하는 진리 탐구와
						공동체를 위한 공헌에</br> 더욱 매진하기 위해 이제 혁신의 도정에 나섭니다.</a>
				</div>
			</div>

			<!-- Slide 2 -->
			<div class="carousel-item">
				<div class="carousel-container">
					<h2 class="animated fadeInDown">앞으로 나아갈 방향</h2>
					<p class="animated fadeInUp">
						우리가 마주한 최근의 시대 변화는 그동안의 성과와 자부심에 안주할 수</br> 없게 합니다. 4차 산업혁명으로 대표되는 기술
						중심의 시대 변화는 인류가 당면한 또 다른 전환점입니다. 창의와 혁신이 요구되는 불확실성의 시대에 인류의 </br>미래를 이끌어
						나가기 위해서는 첨단의 과학기술과 함께 변화에 맞는 새로운 </br>가치를 제시하는 노력이 필요합니다.</a>
				</div>
			</div>

			<!-- Slide 3 -->
			<div class="carousel-item">
				<div class="carousel-container">
					<h2 class="animated fadeInDown">필요로하는 인재상</h2>
					<p class="animated fadeInUp">
						독창적인 사유능력과 더불어 공동체를 두루 살피고 타인을 존중하는 인재를 양성할 것입니다. 사회 곳곳에 숨어있는 인재들을
						선발하여 서울대에서 그 잠재력을 꽃피우도록 할 것입니다. 긴 호흡으로 새로운 영역을 개척하는 연구를 수행할 것입니다.
						사회적 난제들에 대해 실현가능한 정책을 연구하고, 사회가 나아가야 할 방향을 제시하며 사회와 함께 발전해 나가겠습니다.</a>
				</div>
			</div>

			<a class="carousel-control-prev" href="#heroCarousel" role="button"
				data-slide="prev"> <span
				class="carousel-control-prev-icon bx bx-chevron-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#heroCarousel" role="button"
				data-slide="next"> <span
				class="carousel-control-next-icon bx bx-chevron-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>

		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Services Section ======= -->
		<section class="services">
			<div class="container">

				<div class="row">
					<div class="col-md-6 col-lg-3 d-flex align-items-stretch"
						data-aos="fade-up">
						<div class="icon-box icon-box-pink">
							<div class="icon">
								<i class="bx bxl-dribbble"></i>
							</div>
							<h4 class="title">
								<a href="">Lorem Ipsum</a>
							</h4>
							<p class="description">Voluptatum deleniti atque corrupti
								quos dolores et quas molestias excepturi sint occaecati
								cupiditate non provident</p>
						</div>
					</div>

					<div class="col-md-6 col-lg-3 d-flex align-items-stretch"
						data-aos="fade-up" data-aos-delay="100">
						<div class="icon-box icon-box-cyan">
							<div class="icon">
								<i class="bx bx-file"></i>
							</div>
							<h4 class="title">
								<a href="">Sed ut perspiciatis</a>
							</h4>
							<p class="description">Duis aute irure dolor in reprehenderit
								in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
						</div>
					</div>

					<div class="col-md-6 col-lg-3 d-flex align-items-stretch"
						data-aos="fade-up" data-aos-delay="200">
						<div class="icon-box icon-box-green">
							<div class="icon">
								<i class="bx bx-tachometer"></i>
							</div>
							<h4 class="title">
								<a href="">Magni Dolores</a>
							</h4>
							<p class="description">Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est
								laborum</p>
						</div>
					</div>

					<div class="col-md-6 col-lg-3 d-flex align-items-stretch"
						data-aos="fade-up" data-aos-delay="200">
						<div class="icon-box icon-box-blue">
							<div class="icon">
								<i class="bx bx-world"></i>
							</div>
							<h4 class="title">
								<a href="">Nemo Enim</a>
							</h4>
							<p class="description">At vero eos et accusamus et iusto odio
								dignissimos ducimus qui blanditiis praesentium voluptatum
								deleniti atque</p>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Services Section -->

		<!-- ======= Why Us Section ======= -->
		<section class="why-us section-bg" data-aos="fade-up"
			date-aos-delay="200">
			<div class="container">

				<div class="row">
					<div class="col-lg-6 video-box">
						<img src="${img}why-us.jpg" class="img-fluid" alt=""> <a
							href="https://www.youtube.com/watch?v=jDDaplaOz7Q"
							class="venobox play-btn mb-4" data-vbtype="video"
							data-autoplay="true"></a>
					</div>

					<div class="col-lg-6 d-flex flex-column justify-content-center p-5">

						<div class="icon-box">
							<div class="icon">
								<i class="bx bx-fingerprint"></i>
							</div>
							<h4 class="title">
								<a href="">Lorem Ipsum</a>
							</h4>
							<p class="description">Voluptatum deleniti atque corrupti
								quos dolores et quas molestias excepturi sint occaecati
								cupiditate non provident</p>
						</div>

						<div class="icon-box">
							<div class="icon">
								<i class="bx bx-gift"></i>
							</div>
							<h4 class="title">
								<a href="">Nemo Enim</a>
							</h4>
							<p class="description">At vero eos et accusamus et iusto odio
								dignissimos ducimus qui blanditiis praesentium voluptatum
								deleniti atque</p>
						</div>

					</div>
				</div>

			</div>
		</section>
		<!-- End Why Us Section -->

		<!-- ======= Features Section ======= -->
		<section class="features">
			<div class="container">

				<div class="section-title">
					<h2>Features</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row" data-aos="fade-up">
					<div class="col-md-5">
						<img src="${img}features-1.svg" class="img-fluid" alt="">
					</div>
					<div class="col-md-7 pt-4">
						<h3>Voluptatem dignissimos provident quasi corporis
							voluptates sit assumenda.</h3>
						<p class="font-italic">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua.</p>
						<ul>
							<li><i class="icofont-check"></i> Ullamco laboris nisi ut
								aliquip ex ea commodo consequat.</li>
							<li><i class="icofont-check"></i> Duis aute irure dolor in
								reprehenderit in voluptate velit.</li>
						</ul>
					</div>
				</div>

				<div class="row" data-aos="fade-up">
					<div class="col-md-5 order-1 order-md-2">
						<img src="${img}features-2.svg" class="img-fluid" alt="">
					</div>
					<div class="col-md-7 pt-5 order-2 order-md-1">
						<h3>Corporis temporibus maiores provident</h3>
						<p class="font-italic">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua.</p>
						<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat.
							Duis aute irure dolor in reprehenderit in voluptate velit esse
							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum</p>
					</div>
				</div>

				<div class="row" data-aos="fade-up">
					<div class="col-md-5">
						<img src="${img}features-3.svg" class="img-fluid" alt="">
					</div>
					<div class="col-md-7 pt-5">
						<h3>Sunt consequatur ad ut est nulla consectetur reiciendis
							animi voluptas</h3>
						<p>Cupiditate placeat cupiditate placeat est ipsam culpa.
							Delectus quia minima quod. Sunt saepe odit aut quia voluptatem
							hic voluptas dolor doloremque.</p>
						<ul>
							<li><i class="icofont-check"></i> Ullamco laboris nisi ut
								aliquip ex ea commodo consequat.</li>
							<li><i class="icofont-check"></i> Duis aute irure dolor in
								reprehenderit in voluptate velit.</li>
							<li><i class="icofont-check"></i> Facilis ut et voluptatem
								aperiam. Autem soluta ad fugiat.</li>
						</ul>
					</div>
				</div>

				<div class="row" data-aos="fade-up">
					<div class="col-md-5 order-1 order-md-2">
						<img src="${img}features-4.svg" class="img-fluid" alt="">
					</div>
					<div class="col-md-7 pt-5 order-2 order-md-1">
						<h3>Quas et necessitatibus eaque impedit ipsum animi
							consequatur incidunt in</h3>
						<p class="font-italic">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua.</p>
						<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat.
							Duis aute irure dolor in reprehenderit in voluptate velit esse
							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum</p>
					</div>
				</div>

			</div>
		</section>
		<!-- End Features Section -->

	</main>
	<!-- End #main -->


  <%@ include file = "../include/footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>

</html>