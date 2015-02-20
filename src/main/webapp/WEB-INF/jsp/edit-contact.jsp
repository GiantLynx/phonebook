<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="templates/head.jsp" />
<jsp:include page="templates/body-top.jsp" />

   <div class="container">
      <div class="hero-unit">
        <div>
          <p>
            <h2>Edit contact</h2>
          </p>
        </div>
        
        <form:form class="form-horizontal" role="form" commandName="contact">
		<form:errors path="*" cssClass="errorblock" element="div" />
		
			<div class="form-group">
			<label for="firstName" class="control-label col-sm-2">First Name: </label>
			<div class="col-sm-10">
			<form:input required="required" placeholder="Required" class="form-control" id="firstName" path="firstName" cssErrorClass="error" />
			<form:errors path="firstName" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="lastName" class="control-label col-sm-2">Last Name:</label>	
			<div class="col-sm-10">
			<form:input required="required" placeholder="Required" class="form-control" id="lastName"  path="lastName" cssErrorClass="error" />
			<form:errors path="lastName" cssClass="error" />
			</div>
			</div>
			
			
			<div class="form-group">
			<label for="skype" class="control-label col-sm-2">Skype:</label>
			<div class="col-sm-10">
			<form:input  class="form-control" id="skype" path="skype" cssErrorClass="error" />
			<form:errors path="skype" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="email" class="control-label col-sm-2">Email:</label>
			<div class="col-sm-10">
			<form:input class="form-control" id="email" path="email" cssErrorClass="error" />
			<form:errors path="email" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="telephone" class="control-label col-sm-2">Telephone:</label>
			<div class="col-sm-10">
			<form:input class="form-control" id="telephone" path="telephone" cssErrorClass="error" />
			<form:errors path="telephone" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="fax" class="control-label col-sm-2">Fax:</label>
			<div class="col-sm-10">	
			<form:input   class="form-control" id="fax" path="fax" cssErrorClass="error" />
			<form:errors path="fax" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="address" class="control-label col-sm-2">Address:</label>
			<div class="col-sm-10">
			<form:textarea rows="5" cols="30" class="form-control" id="address" path="address" cssErrorClass="error" />
			<form:errors path="address" cssClass="error" />
			</div>
			</div>
			
			<div class="form-group">
			<label for="info" class="control-label col-sm-2">Add. info:</label>
			<div class="col-sm-10">
			<form:textarea rows="5" cols="30"  class="form-control" id="info" path="info" cssErrorClass="error" />
			<form:errors path="info" cssClass="error" />
			</div>
			</div>
			
			<div class="pagination-centered">
			<input type="submit" class="btn btn-primary"  value="Submit"/>
			</div>
			
	  </form:form>
						<form action="view-contacts.html" method="get">
				 <input type="submit" value="Back" class="btn" /></form>
	  <br>
	  
	  		<div class="pagination-centered"><h3>${msg}</h3></div>
	  
      </div>
      <div>
      </div>
    </div>
    
    <script src="jquery-1.8.3.js">
    </script>
    
    <script src="assets/js/bootstrap.js">
    </script>
  </body>
</html>
