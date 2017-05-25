<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="resources/js/signup.js"></script>
<script>function setSelectedIndex(s, v) {

    for ( var i = 0; i < s.options.length; i++ ) {

        if ( s.options[i].text == v ) {

            s.options[i].selected = true;

            return;

        }

    }

}

setSelectedIndex(document.getElementById('selection'),"${cookie.roletype.value}")</script>
<link rel="stylesheet" type="text/css" href="resources/css/signup.css"/>

</head>
<body>
<div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form:form role="form" action="login.htm" commandName="user" method="post">
			<fieldset>
				<h2>Please Sign In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <form:input path="username" type="username" name="username" class="form-control input-lg" placeholder="Username" value='${cookie.userName.value}' required="required"/><form:errors path="username"/>
				</div>
				<div class="form-group">
                    <form:input path="password" type="password" name="password"  id="password" class="form-control input-lg" placeholder="Password" value='${cookie.password.value}' required="required"/><form:errors path="password"/>
				</div>
				<div class="form-group">
				<form:select path="roletype" class="form-control form-group" name="roletype" value='${cookie.roletype.value}' id="selection">
					<option value="User">User</option>
					<option value="Content Manager">Content Manager</option>
					<option value="Admin">Admin</option>
				</form:select>
				</div>
				<span class="button-checkbox">
					<button type="button" class="btn" data-color="info">Remember Me</button>
                    <input type="checkbox" name="rememberme" id="remember_me" checked="checked" class="hidden">
					<!--a href="" class="btn btn-link pull-right">Forgot Password?</a-->
				</span>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="register.htm" class="btn btn-lg btn-primary btn-block">Register</a>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>

</body>
</html>