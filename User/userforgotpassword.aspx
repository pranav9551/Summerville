<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userforgotpassword.aspx.cs" Inherits="summervilleuser1.asset.WebForm3" %>

<!DOCTYPE html>

<html dir="ltr" lang="en">

<!-- Mirrored from html.kodesolution.live/j/horseman/v2.0/demo/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jan 2022 10:55:08 GMT -->
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Horseman | Equestrian & Horse Riding Training HTML Template" />
<meta name="keywords" content="horse,equestrian,riding,racing,horseman,horsewomen,cavalier,jumping" />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->
<title>Horseman | Equestrian & Horse Riding Training HTML Template</title>

<!-- Favicon and Touch Icons -->
<link href="images/favicon.png" rel="shortcut icon" type="image/png">
<link href="images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- CSS | Theme Color -->
<link href="css/colors/theme-skin-yellow.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="js/jquery-plugin-collection.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="">
<div id="wrapper" class="clearfix">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner" class="spinner large-icon">
      <img alt="" src="images/preloaders/">
    </div>
  </div>
  
  <!-- Header -->
    

  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-6" data-bg-img="images/bg/login.jpg">
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h3 class="font-28 text-white">Forgot Password</h3>
              <ol class="breadcrumb text-center text-black mt-10">
               
              </ol>
            </div>
          </div>
        </div>
      </div>      
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <h4 class="text-gray mt-0 pt-5">Forgot-Password</h4>
            <hr>
             <form name="login-form" class="clearfix" runat="server">
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="form_username_email">Email Id</label>
<%--                  <input id="form_username_email" name="form_username_email" class="form-control" type="text">--%>
                    <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
                </div>
              </div>
              
              <div class="checkbox pull-left mt-15">
                <label for="form_checkbox">
                  <input id="form_checkbox" name="form_checkbox" type="checkbox">
                  Remember me </label>
              </div> 
              <div class="form-group pull-right mt-10">
<%--                <button type="submit" class="btn btn-dark btn-sm">Login</button>--%>
                  <asp:Button ID="btn_log" class="btn btn-dark btn-sm" runat="server" Text="Submit"   />
              </div>
              <div class="clear text-center pt-10">
                <a class="text-theme-colored font-weight-600 font-12" href="Login.aspx">Login</a>
              </div>
              <div class="clear text-center pt-10">
<%--                <a class="btn btn-dark btn-lg btn-block no-border mt-15 mb-15" href="#" data-bg-color="#3b5998">Login with facebook</a>
                <a class="btn btn-dark btn-lg btn-block no-border" href="#" data-bg-color="#00acee">Login with twitter</a>--%>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
   
      <!-- end main-content -->
  </div>
  
  <!-- Footer -->
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>

<!-- Mirrored from html.kodesolution.live/j/horseman/v2.0/demo/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jan 2022 10:55:08 GMT -->
</html>
