<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Test.Visitor.Register" %>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <link rel="icon" href="images/test.png" />
	<title> Register Form </title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Creative Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="Register/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="Register/css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Bellefair&amp;subset=hebrew,latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!--header-->
	<h1>
		<span>R</span>egister
		<span>F</span>orm</h1>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form id="Form1" action="#" method="post" runat="server">
				<div class="form-style-agile">
					<label>Your Name</label>
					<div class="pom-agile">
						<span class="fa fa-user-o" aria-hidden="true"></span>
						<input placeholder="Your Name" name="Name" type="text" required="">
					</div>
				</div>
				<div class="form-style-agile">
					<label>Adress</label>
					<div class="pom-agile">
						<span class="fa fa-address-book" aria-hidden="true"></span>
						<input placeholder="Adress" name="Adress" type="text" required="">
					</div>
				</div>
				<div class="form-style-agile">
					<label>City</label>
					<div class="pom-agile">
						<span class="fa fa-address-book-o" aria-hidden="true"></span>
						<input placeholder="City" name="City" type="text" required="">
					</div>
				</div>
				<div class="form-style-agile">
					<label>Mobile</label>
					<div class="pom-agile">
						<span class="fa fa-mobile" aria-hidden="true"></span>
						<input placeholder="Mobile" name="Mobile" type="text" required="">
					</div>
				</div>
               <div class="form-style-agile">
					<label>Email</label>
					<div class="pom-agile">
						<span class="fa fa-envelope" aria-hidden="true"></span>
						<input placeholder="Email" name="Email" type="email" required="">
					</div>
				</div>
				<div class="form-style-agile">
					<label>Password</label>
					<div class="pom-agile">
						<span class="fa fa-key" aria-hidden="true"></span>
						<input placeholder="Password" name="Password" type="password" required="">
					</div>
				</div>
                <div class="form-style-agile">
					<label>Employee Id</label>
					<div class="pom-agile">
						<span class="fa fa-key" aria-hidden="true"></span>
						<input placeholder="Employee Id" name="empId" type="text" required="">
					</div>
				</div>

				<%--<input type="submit" value="Register">--%>
                <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
                <a href="Index.aspx" class="for">Home Page</a>
			</form>
		</div>
	</div>
	<!-- //content -->
	<!-- footer -->
	<div class="footer">
		<h2>&copy; Register Form. All rights reserved | Design by
			<a href="#"></a>
		</h2>
	</div>
	<!-- //footer -->


	<!-- password-script -->
	<%--<script>
	    window.onload = function () {
	        document.getElementById("password1").onchange = validatePassword;
	        document.getElementById("password2").onchange = validatePassword;
	    }

	    function validatePassword() {
	        var pass2 = document.getElementById("password2").value;
	        var pass1 = document.getElementById("password1").value;
	        if (pass1 != pass2)
	            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
	        else
	            document.getElementById("password2").setCustomValidity('');
	        //empty string means no validation error
	    }
	</script>--%>
	<!-- //password-script -->

</body>

</html>
