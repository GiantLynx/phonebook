<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="templates/head.jsp" />
<jsp:include page="templates/body-top.jsp" />

   <div class="container">
      <div class="hero-unit">
        <div>
          <h1>
            ${message}
          </h1>
          <p>
            Welcome to #1 popular phone saving service on the web!
          </p>
        </div>
        <a class="btn btn-primary" href="add-contact.html">
          Add New Contact »
        </a>
        
        <a class="btn btn-primary" href="view-contacts.html">
          View All Contacts »
        </a>
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
