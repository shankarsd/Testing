<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test.Visitor.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="images/test.png" />
    <link rel="icon" href="images/salesman.ico" />
    <title>Login Form</title>
	<!-- Meta tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Jolly Login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Meta tags -->


<!-- font-awesome icons -->
   <link rel="stylesheet" href="Login/css/font-awesome.min.css" />

<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="Login/css/style.css" rel='stylesheet' type='text/css' media="all">
<!--//style sheet end here-->

<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">

</head>
<body>

<h1>Login Form</h1>

<div class="main-w3">
    <form id="Form1" action="#" method="post" runat="server">
    <h2>
        <span class="fa fa-user t-w3" aria-hidden="true"></span>
    </h2>
    <div class="login-w3ls">
       <%-- <div class="icons">
            <input type="email" name="email" placeholder="Email" required="">
            <select class="example" name="typ" required="">
                <option value="">-Select Type--</option>
                <option value="Admin">Admin</option>
                <option value="Developer">Developer</option>
                <option value="Tester">Tester</option>
            </select>
            <span class="fa fa-user" aria-hidden="true"></span>
            <div class="clear">
            </div>
        </div>--%>
        <div class="icons">
            <input type="text" name="email" class="example" placeholder="Email" required="">
            <span class="fa fa-user" aria-hidden="true"></span>
            <div class="clear">
            </div>
        </div><br /><br />
        <div class="icons">
            <input type="password" name="password" placeholder="Password" required="">
            <span class="fa fa-key" aria-hidden="true"></span>
            <div class="clear">
            </div>
        </div>
        <div class="btnn">
            <%--<input type="checkbox" class="checked"><span class="span">Remember me..?</span><br>--%>
            <%--<button type="submit">Login</button><br>--%>
            <asp:Button ID="Button1" runat="server" Text="Login" class="example7" 
                onclick="Button1_Click" />
            <a href="Index.aspx" class="for">Home Page</a>
        </div>
    </div>
    </form>

 </div> 

    <div class="copy">
    <p>&copy;2019 Login Form. All Rights Reserved | Design by <a href="#" target="_blank"></a>
</div>
</body>
</html>
