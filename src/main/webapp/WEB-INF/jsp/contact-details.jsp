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
			<h2>Contact Info</h2>
			<br />
			</p>
		</div>


		<div class="row">
			<div class="col-sm-4" style="background-color: lavender;">
			
				<table>
				<tr>
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
					</table>
			
			</div>
			<div class="col-sm-8" style="background-color: lavenderblush;"><h2>${contact.firstName} ${contact.lastName}</h2>
			
				<p>${contact.email}</p>
				<p>${contact.telephone}</p>
				<p>${contact.fax}<br/>
				
				<p>${contact.address}
				<p>${contact.info}</p><br/>
				
				
			</div>
		</div>
		<br/>
		
				<div class="pagination-centered">
			<form action="view-contacts.html" method="get">
				 <input type="submit" value="Back" class="btn" /></form>
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
