<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<form:form commandName="user" cssClass="form-signin">
	<h2 class="form-signin-heading">Rejestracja</h2>
	<form:input path="name" placeholder="Nazwa użytkownika"
		cssClass="form-control" required="required" />
	<form:input path="email" placeholder="Email" cssClass="form-control"
		required="required" />
	<form:password path="password" placeholder="Hasło"
		cssClass="form-control" required="required" />
	<form:password path="confirmPassword" placeholder="Powtórz hasło"
		cssClass="form-control" required="required" />
	<button class="btn btn-lg btn-primary btn-block" name="submit"
		type="submit">Zarejestruj!</button>


	<%-- <div class="form-group">
		<label for="name" class="col-sm-2 control-label">Name</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Email</label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Save" class="btn btn-lg btn-primary" />
		</div>
	</div> --%>
</form:form>