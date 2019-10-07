<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--  <c:set var="contextPath" value="${pageContext.request.contextPath}" />
--%>
<!DOCTYPE html>
<html	xmlns="http://www.w3.org/1999/xhtml"
		xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

	<link rel="stylesheet" th:href="@{/css/styles.css}" href="../../css/main.css" />
	<link rel="stylesheet" th:href="@{/styles.css}" />
    <link rel="stylesheet" th:href="@{/bootstrap.min.css" >
    <link rel="stylesheet" th:href="@{/common.css" >

</head>

<body>

<div class="container">

    <form method="POST" th:action="@{/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="email" type="text" class="form-control" placeholder="Email" autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

			<h3>Name your taco creation:</h3>
			 <input type="text" th:field="*{name}"/>
			 <br/>

			<div th:if="${#fields.hasErrors()}">
				<span class="validationError"> Please correct the problems below and resubmit. </span>
			</div>

		</form>

</div>
	<!-- /container -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script th:href="@{/resources/js/bootstrap.min.js"></script>
</body>
</html>