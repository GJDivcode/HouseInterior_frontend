<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
 <%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
/* .login{
box-shadow: 0 1px 3px;
border: 0 none;
background-color: #ebe9eb;
border-radius: 0;

}
 */</style>
</head>
<body style="background:#f6f6f6">
<%@include file="/WEB-INF/views/shared/header.jsp" %>

<div class="container-fluid">
<div class="row" style="margin-top:90px">
<div class="col-sm-1 sidenav">
</div> 
 
    <div class="col-sm-9">
    <h4>Please enter your Credentials</h1>
    <form class="form-horizontal login" style="margin-top:5%;">
    <c:if test="${not empty msg}">
	<div class="msg">${msg}</div>
	</c:if>
	 <c:url var="action" value="/login"></c:url>       
	<form:form action="${action }" method="post">
	        
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter UserName" width="50%">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-6">
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" width="50%">
      </div>
    </div>
   
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" class="btn btn-default" value="login"></button>
      </div>
    </div>
    </form:form>
    
    
  </form>
  </div>
  
  </div>
</div>
<%@include file="/WEB-INF/views/shared/footer.jsp" %> 
</body>
</html>