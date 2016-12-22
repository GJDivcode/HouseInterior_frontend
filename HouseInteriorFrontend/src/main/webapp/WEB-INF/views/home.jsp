<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dev title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/shared/header.jsp"%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img src="..." alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="..." alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="..." alt="Third slide">
    </div>
  </div>
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="icon-prev" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="icon-next" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div>
</div>

<div>
..

</div>

<%-- <div id="admin">
<c:if test="${isAdmin==true }">
<%@ include file="/WEB-INF/views/admin/adminHome1.jsp" %>
</c:if>
<div id="categories">
<c:if test="${isAdminClickedCategories==true }">
<%@ include file="/WEB-INF/views/admin/adminHome1.jsp" %>
<%@ include file="/WEB-INF/views/admin/category.jsp" %>
</c:if>
</div>

<div id="products">
<c:if test="${isAdminClickedProducts==true }">
<%@ include file="/WEB-INF/views/admin/adminHome1.jsp" %>
<%@ include file="/WEB-INF/views/admin/product.jsp" %>
</c:if>
</div>

<div id="suppliers">
<c:if test="${isAdminClickedSuppliers==true }">
<%@ include file="/WEB-INF/views/admin/adminHome1.jsp" %>
<%@ include file="/WEB-INF/views/admin/supplier.jsp" %>
</c:if>
</div>
</div> --%>


























<%@include file="/WEB-INF/views/shared/footer.jsp" %>
</body>
</html>