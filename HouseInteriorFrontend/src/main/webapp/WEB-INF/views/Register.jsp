<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/shared/header.jsp" %> --%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/shared/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .cls{
  width:50%;
  }
  </style>
<title>Insert title here</title>
</head>
<body style="background:#f6f6f6">
<%@include file="/WEB-INF/views/shared/header.jsp" %>
<div class="container-fluid">
<div class="row" style="margin-top:90px">
<div class="col-sm-3 sidenav">
</div> 
<div class="col-sm-9">
            <h1>Register Customer</h1>
            <p class="lead">Please fill in your information below:</p>
        
       <%--  <c:url var="action" value="user/Register"></c:url>commandName="userdetail"   --%>
       
           <form class="form-horizontal login" style="margin-top:5%;">
           <form:form action="/user/Register" method="post" modelAttribute="userdetail">
        
            <div class="form-group">
            <label for="userid">ID:</label>
             <form:label path="userid">
             <spring:message text="ID"></spring:message>
            </form:label></label>
            <form:input path="userid" class="form-Control cls" pattern=".{4,7}" required="true"/>
            </div>
            
             <div class="form-group">
             <label for="name">Name:</label>
             <form:label path="name"><spring:message text="UserName"></spring:message></form:label>
             <form:input path="name" class="form-Control cls" title="Name should Not be Null"  required="true"/>
             </div>
             
             <div class="form-group">
             <label for="name">Password</label>
             <form:label path="password"><spring:message text="password"></spring:message></form:label>
             <form:input path="password" class="form-Control cls" title="Password Should Contains 4 to 12 Characters" pattern=".{4,12}"  required="true"/>
             </div>
             
             <div class="form-group">
             <label for="name">Mobile No:</label>
             <form:label path="mobile"><spring:message text="Mobile"></spring:message></form:label>
             <form:input path="mobile" type="tel" class="form-Control cls" pattern="^\d{10}$" title="Enter a valid Mobile Number"  required="true"/>
             </div>
             
             <div class="form-group">
             <label for="name">Email:</label>
             <form:label path="mailid"><spring:message text="Email"></spring:message></form:label>
             <form:input path="mailid" type="email" class="form-Control cls" />
             </div>
             
             <div class="form-group">
             <input type="submit" value="submit" class="btn btn-default">
             <%-- <input type="submit" value="<spring:message text="Register"/>"/> --%>
             </div>
                       
           </form:form>
           </form>
           </div>
           </div>
          
</div>
<%@include file="/WEB-INF/views/shared/footer.jsp" %>
</body>
</html>
