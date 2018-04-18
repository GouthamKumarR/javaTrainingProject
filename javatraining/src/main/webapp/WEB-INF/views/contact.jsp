<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
		<!-- <header id="head" class="secondary">
            <div class="container">
                    <h1>Contact Us</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing eliras scele!</p>
                </div>
    </header> -->
     <div class="page-header-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="header-page">
                     <h1>Contact Us</h1>
                  </div>
               </div>
            </div>
         </div>
      </div>


	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Contact Us</h3>
						<p>
						For any information feel free to contact us we will be with you to help you and guide you in all the ways.
						</p>
					<c:if test="${not empty message}">	
								<div class="row">			
									<div class="col-xs-12 col-md-offset-2 col-md-8">			
										<div class="alert alert-info fade in">${message}</div>				
									</div>
								</div>
						</c:if>
						
						 <sf:form action="${contextRoot}/contact" method="post" modelAttribute="contact" class="form-light mt-20" role="form">
							<div class="form-group">
								<label>Name</label>
								<sf:input type="text" path="name" placeholder="Name" id="name" name="name" class="form-control" ></sf:input>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label>
										<sf:input type="email" path="email" placeholder="Email" id="email" name="email" class="form-control" ></sf:input>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
										<sf:input type="text" path="phone" class="form-control" placeholder="Phone number" id="phone" name="phone"></sf:input>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label>
								<sf:input type="text" path="subject"  placeholder="Subject" id="subject" name="subject" class="form-control" ></sf:input>
							</div>
							<div class="form-group">
								<label>Message</label>
								<sf:textarea cols="12" rows="7" path="message" placeholder="Message..." id="message" name="message" class="form-control" ></sf:textarea>
							</div>
							<button type="submit" class="btn btn-two">Send message</button><p><br/></p>
						</sf:form>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
								<h3 class="section-title">Office Address</h3>
								<div class="contact-info">
									<h5>Address</h5>
									<p>Navarung Rajajinagar</p>
									
									<h5>Email</h5>
									<p>javacafe93@gmail.com</p>
									
									<h5>Phone</h5>
									<p>+91 9632772262</p>
								</div>
							</div> 
						</div> 						
					</div>
				</div>
			</div>
	<!-- /container -->

	


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="${contextRoot}/google-map.js"></script>


</body>
</html>
