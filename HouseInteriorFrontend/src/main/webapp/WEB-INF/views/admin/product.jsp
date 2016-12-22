<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<div class="page-header">
            <h1>Add Product</h1>
            <!-- <p class="lead">Please fill in your information below:</p> -->
        </div>
        <c:url var="addAction" value="/product/add" ></c:url>
        <form:form action="${addAction }" commandName="product" method="post" enctype="multipart/form-data">
        <div class="form-group">
             <form:label path="id"><spring:message text="ID"></spring:message></form:label>
              <c:choose>
              <c:when test="${!empty product.id}">
            <form:input path="id" class="form-Control" disabled="true" readonly="=true"/>  
              </c:when>
              <c:otherwise>
              <form:input path="id" pattern=".{6,7}" required="true" title="Id should 6 to 7 characters"/>
              </c:otherwise>
             </c:choose>          
            </div>
         <div class="form-group">
         <form:label path="supplier">
         <spring:message text="Supplier"></spring:message>
         </form:label>
         
         
         
         
         
         
         </div>
        </form:form>
        
</div>
</div>



</body>
</html>