
	<!-- /.navbar -->

	<!-- 	<header id="head" class="secondary">
            <div class="container">
                    <h1>Courses</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing eliras scele!</p>
                </div>
    </header> -->
    
     <div class="page-header-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="header-page">
                     <h1>Courses</h1>
                  </div>
               </div>
            </div>
         </div>
      </div>

    
    <div class="container">
<!-- <h3>Courses</h3> -->
<!-- <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
</p> -->
<br/>
<ul class="list-unstyled video-list-thumbs row">

<c:forEach items="${courses}" var="course">
	<li class="col-lg-3 col-sm-6 col-xs-12">
		<a href="${contextRoot}/coursedetails/${course.id}" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/${course.imageURL}" alt="Barca" class="img-responsive" height="130px" />
			<h2> ${course.name}</h2>
			
		</a>
	</li>
	
	</c:forEach>
	<%-- <li class="col-lg-3 col-sm-6 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>Advance Java</h2>
		</a>
	</li>
	<li class="col-lg-3 col-sm-6 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>J2EE</h2>
		</a>
	</li>
	<li class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>WEB TECHNOLOGIES</h2>
		</a>
	</li> 
	<li class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>SQL</h2>
		</a>
	</li>
	
	<li class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>Spring Framework</h2>
		</a>
	</li>
	
	<li class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
		<a href="${contextRoot}/coursedetails" title="Claudio Bravo, antes su debut con el Barça en la Liga">
			<img src="${images}/portfolio/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
			<h2>Hibernate Framework</h2>
		</a>
	</li> --%>
</ul>

</div>
	<!--  <div id="courses">
		<section class="container">
			<h3>Development Courses</h3>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>Responsive Design</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>HTML5/CSS3</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>Web Designing</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>Web App Dev</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>Data Base</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3>Mobile App Dev</h3>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						</div>
					</div>
				</div>
			</div>

		</section>
	</div> -->
    
	<!-- container -->
	<!--  <div class="container">
		<div class="row">
			<section class="col-sm-12 maincontent">
				<h3>Responsive Website</h3>
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</p>
				<h3>Bootstrap</h3>
				<p>Standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			</section>
		</div>
	</div>  -->
	<!-- /container -->



	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>
