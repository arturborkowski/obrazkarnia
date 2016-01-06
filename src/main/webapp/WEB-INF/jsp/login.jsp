<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<form class="form-signin" role="form"
	action='<spring:url value="/login" />' method="POST">
	
	<h2 class="form-signin-heading">Logowanie</h2>
	
	<input type="text" id="inputName" name="username" class="form-control"
		placeholder="Nazwa użytkownika" required autofocus> 
	<input
		type="password" id="inputPassword" name="password"
		class="form-control" placeholder="Hasło" required>
	<button 
		class="btn btn-lg btn-primary btn-block" name="submit"
		type="submit">Zaloguj!</button>
</form>