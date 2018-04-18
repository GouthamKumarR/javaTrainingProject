<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


	<title>${title}</title>
	<link rel="favicon" href="${images}/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="${css}/bootstrap.min.css">
	<link rel="stylesheet" href="${css}/font-awesome.min.css"> 
	<link rel="stylesheet" href="${css}/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="${css}/style.css">
    <link rel='stylesheet' id='camera-css'  href='${css}/camera.css' type='text/css' media='all'> 
	
</head>
<body>


	<!-- Fixed navbar -->
	<%@include file="./shared/nav.jsp"%>
	<!-- /.navbar -->
	
	
	 <!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>
			
			
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>
			
			<c:if test="${userClickBatches == true }">
				<%@include file="batches.jsp"%>
			</c:if>
			
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<c:if test="${userClickGallery == true }">
				<%@include file="gallery.jsp"%>
			</c:if>
			
			<c:if test="${userClickCourses == true }">
				<%@include file="courses.jsp"%>
			</c:if>
			
			<c:if test="${userClicksidebarRight == true }">
				<%@include file="sidebar-right.jsp"%>
			</c:if>
			
			<c:if test="${userClickCourseDetails == true }">
				<%@include file="coursedetails.jsp"%>
			</c:if>
			
			








 <%@include file="./shared/footer.jsp"%>
   

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="${js}/modernizr-latest.js"></script> 
	<script type='text/javascript' src='${js}/jquery.min.js'></script>
    <script type='text/javascript' src='${js}/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='${js}/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='${js}/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='${js}/camera.min.js'></script> 
    <script src="${js}/bootstrap.min.js"></script> 
	<script src="${js}/custom.js"></script>
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});

		});
      
	</script>
    
</body>
</html>
