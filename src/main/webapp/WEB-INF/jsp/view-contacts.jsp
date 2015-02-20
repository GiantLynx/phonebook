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
			<h2>
				Contacts in the phone book:<br />
			</h2>
			</p>
		</div>


		<table class="table">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Telephone</th>
				<th>View</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${contacts}" var="contact">
				<tr>
					<td>${contact.firstName}</td>
					<td>${contact.lastName}</td>
					<td>${contact.telephone}</td>

					<td>
						<form action="contact-details.html" method="post">
							<input type="hidden" value="${contact.id}" name="id" /> <input
								type="submit" value="View" class="btn btn-primary" />
						</form>
					</td>
					
					<td>
						<form action="edit-contact.html" method="get">
							<input type="hidden" value="${contact.id}" name="id" /> <input
								type="submit" value="Edit" class="btn btn-primary" />
						</form>
					</td>

					<td>

						<form action="delete-contact.html" method="post">
							<input type="hidden" value="${contact.id}" name="id" /> <input
								type="submit" value="Remove" class="btn btn-primary" />
						</form>

					</td>

				</tr>

			</c:forEach>


		</table>




		<br />

		<div class="pagination-centered">
			<form action="index.html" method="get">
				 <input type="submit" value="Back" class="btn" />
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
