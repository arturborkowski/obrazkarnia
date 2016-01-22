<%!int images;%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>


<div class="container">
	<div class="searchbar text-center">
		<form role="form" action='<spring:url value="/search.html" />'
			method="POST">
			<div class="input-group">
				<input name="tag" class="form-control input-search"> <span
					class="input-group-btn">
					<button class="btn btn-search" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</span>
			</div>
			<!-- /input-group -->
		</form>

	</div>



<br />
<br />


<script type="text/javascript">
	$(document).ready(function() {

		$('.fancybox').fancybox();
	});
</script>


	<div class="row">

		<div class="col-lg-12">
			<div class="history">
				<h1 class="page-header">Wyniki wyszukiwania</h1>

				<c:forEach items="${photos}" var="foto">

					<div class="col-lg-3 col-md-4 col-xs-6 thumb">
						<a class="fancybox" href="${foto.originalSize.url}"
							data-fancybox-group="gallery"><img class="thumbnail"
							src="${foto.originalSize.url}" alt=""
							style="width: 28rem; height: 22rem" /></a>
					</div>
				</c:forEach>

			</div>
		</div>

	</div>
</div>
