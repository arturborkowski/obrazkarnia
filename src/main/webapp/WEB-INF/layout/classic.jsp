<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>



<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>


<%-- <spring:url value="/style/css/bootstrap.min.css" var="bootstrapCss" /> --%>
<spring:url value="/style/css/style.css" var="styleCss" />
<spring:url value="/style/images/login-icon.png" var="loginIcon" />
<spring:url value="/style/images/register-icon.png" var="registerIcon" />

<!-- Custom CSS -->
<%-- <link rel="stylesheet" href='${bootstrapCss}'> --%>
<link rel="stylesheet" href='${styleCss}'>



</head>
<body>

	<%-- <div class="main-page-menu">
		<div class="icon">
			<a href=""> <img src='${loginIcon}' />
			</a>
		</div>
		<div class="icon">
			<a href=""> <img src='${registerIcon}' />
			</a>
		</div>
	</div> --%>

	<!-- Static navbar -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<spring:url value="/" />'>Obrazkarnia</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="${current == 'index' ? 'active': ''}"><a
						href='<spring:url value="/" />'>Strona główna</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="${current == 'users' ? 'active': ''}"><a
							href='<spring:url value="/users.html"/>'>Użytkownicy</a></li>
					</security:authorize>					
					<security:authorize access="! isAuthenticated()">
						<li class="${current == 'register' ? 'active': ''}"><a
							href='<spring:url value="/register.html"/>'>Rejestracja</a></li>
						<li class="${current == 'login' ? 'active': ''}"><a
							href='<spring:url value="/login.html"/>'>Logowanie</a></li>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<li class="${current == 'logout' ? 'active': ''}"><a
							href='<spring:url value="#"/>'>Historia</a></li>
						<li class="${current == 'logout' ? 'active': ''}"><a
							href='<spring:url value="#"/>'>Ulubione</a></li>
						<li class="${current == 'logout' ? 'active': ''}"><a
							href='<spring:url value="/logout"/>'>Wyloguj się</a></li>
					</security:authorize>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->
	</nav>

	<!-- Start Logo Section -->
	<section id="logo-section" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="logo text-center">
						<h1>Obrazkarnia</h1>
						<span>Wyszukiwarka obrazów</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Logo Section -->


	<!-- Start Main Body Section -->
	<div class="mainbody-section text-center">


		<tiles:insertAttribute name="body" />

	</div>

	<!-- End Main Body Section -->


	<br />
	<br />
	<center>

		<tiles:insertAttribute name="footer" />

	</center>
	</div>
</body>
</html>