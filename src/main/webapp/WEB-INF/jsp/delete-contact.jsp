<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="templates/head.jsp" />
<jsp:include page="templates/body-top.jsp" />

<div class="container">
	<div class="hero-unit">
		<div>
			<p>
			<h2>Contact ${contactName} was successfully deleted</h2>
			<br />
			</p>
		</div>

		<br/>
		
				<div class="pagination-centered">
			<form action="view-contacts.html" method="get">
				 <input type="submit" value="Back to Contacts" class="btn" /></form>
		</div>
		

	</div>
	<div></div>
</div>

<script src="jquery-1.8.3.js">
	
</script>

<script src="assets/js/bootstrap.js">
	
</script>
</body>
</html>
