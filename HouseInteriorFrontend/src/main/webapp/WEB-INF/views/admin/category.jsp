<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<c:url var ="addAction" value="/category/add"></c:url>
<form:form action="${addAction}" commandName="category">
 <div class="col-sm-10 text-left">
 <div class="form-group">
            <label for="categoryid">ID:
             <form:label path="categoryid">
             <spring:message text="ID"></spring:message>
            </form:label></label>
            <c:choose>
            <c:when test="${!empty category.categoryid }">
            <form:input path="categoryid" class="form-Control cls" pattern=".{4,7}" required="true" title="Id should Contain 4 to 7 characters"/>
            </c:when>
            </c:choose>
            </div>
            
            <div class="form-group">
             <label for="name">Name:</label>
             <form:label path="name"><spring:message text="Name"></spring:message></form:label>
             <form:input path="name" class="form-Control cls" required="true"/>
             </div>
            
             <div class="form-group">
             <label for="description">Description:</label>
             <form:label path="description"><spring:message text="Name"></spring:message></form:label>
             <form:input path="description" class="form-Control cls" required="true"/>
             </div>
             
              <div class="form-group">
              <c:if test="${!empty category.name }">
              <input type="submit" value="<spring:message text="Edit Category"/>"/> 
              </c:if>
              <c:if test="${empty category.name }">
              <input type="submit" value="<spring:message text="Add Category"/>"/>
              </c:if>
              </div>
 </div>
 <div class="col-sm-10 text-left">
 <h3>Category List</h3>
 <div class="table-responsive">
 <c:if test="${!empty categoryList }">
 <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Category ID</th>
        <th>Category Name</th>
        <th>Category Description</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <c:forEach items="${categoryList }" var="category">
    <tbody>
      <tr>
        <td>${category.categoryid}</td>
        <td>${category.name }</td>
        <td>${category.description }</td>
        <td><a href="<c:url value='category/edit/${category.categoryid}'/>">Edit</a></td>
        <td><a href="<c:url value='category/remove/${category.categoryid}'/>">Delete</a></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
    </c:forEach>
     </table>
 
 </c:if>
   </div>
 
 
 </div>
 



</form:form>
</body>
</html>