 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="summervilleuser1.asset.WebForm1" %>

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
<title>SummerVille | USER LOGIN </title>

<!-- Favicon and Touch Icons -->
<link href="images/fully.png" rel="shortcut icon" type="image/png">
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
      <img alt="" src="images/preloaders/Ellipsis-1.4s-197px.gif">
    </div>
    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
  </div>
  
  <!-- Header -->
  <header id="header" class="header">
    <div class="header-top bg-theme-colored sm-text-center p-0">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="widget no-border m-0">
              <ul class="list-inline font-13 sm-text-center mt-5">
                <li>
                  <a class="text-white" href="#">FAQ</a>
                </li>
                <li class="text-white">|</li>
                <li>
                  <a class="text-white" href="#">Help Desk</a>
                </li>
                <li class="text-white">|</li>
                <li>
                  <a class="text-white" href="Registration.aspx">Registration</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-8">
            <div class="widget m-0 pull-right flip sm-pull-none sm-text-center">
              <ul class="list-inline pull-right flip">
                <li class="mb-0 pb-0">
                        <!-- dropdown cart -->
                        <!-- dropdown cart ends -->
                <li class="mb-0 pb-0">
                  <div class="top-dropdown-outer pt-5 pb-10">
                    <a class="top-search-box has-dropdown text-white"><i class="fa fa-search font-13"></i> &nbsp;</a>
                    <ul class="dropdown">
                      <li>
                        <div class="search-form-wrapper">
                          <form method="get" class="mt-10">
                            <input type="text" onfocus="if(this.value =='Enter your search') { this.value = ''; }" onblur="if(this.value == '') { this.value ='Enter your search'; }" value="Enter your search" id="searchinput" name="s" class="">
                            <label><input type="submit" name="submit" value=""></label>
                          </form>
                        </div>
                      </li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
            <div class="widget no-border m-0 mr-15 pull-right flip sm-pull-none sm-text-center">
              <ul class="styled-icons icon-circled icon-sm pull-right flip sm-pull-none sm-text-center mt-sm-15">
                <li><a href="#"><i class="fa fa-facebook text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin text-white"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-middle p-0 xs-text-center">
      <div class="container pt-0 pb-0">
        <div class="row">
          <div class="col-xs-12 col-sm-3 col-md-6">
            <div class="widget no-border m-0">
              <a href="index-mp-layout1.html" class="menuzord-brand pull-left flip xs-pull-center mt-20 mb-10"><img alt="" src="images/f1.png"></a>
            </div>
          </div>
          <div class="col-xs-12 col-sm-3 col-md-2">
            <div class="widget no-border m-0">
              <div class="mt-15 mb-10 text-right flip sm-text-center">
                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-envelope text-theme-colored font-18"></i> Mail Us Today</div>
                <a href="#" class="font-12 text-gray"> summervilleproject22@gmail.com</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-3 col-md-2">
            <div class="widget no-border m-0">
              <div class="mt-15 mb-10 text-right flip sm-text-center">
                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-map-marker text-theme-colored font-18"></i> Company Location</div>
                <a href="#" class="font-12 text-gray"> 121 King Street, Dubai</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-3 col-md-2">
            <div class="widget no-border m-0">
              <div class="mt-15 mb-10 text-right flip sm-text-center">
                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-phone-square text-theme-colored font-18"></i> +(91)9924861368</div>
                <a href="#" class="font-12 text-gray"> Call us for more details</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 </header> 

  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-6" data-bg-img="images/bg/loginimg.jpg">
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h3 class="font-28 text-white">Log-in</h3>
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
            <h4 class="text-gray mt-0 pt-5"> Login</h4>
            <hr>
             <form name="login-form" class="clearfix" runat="server">
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="form_username_email">Email Id</label>
<%--                  <input id="form_username_email" name="form_username_email" class="form-control" type="text">--%>
                    <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="form_password">Password</label>
                  <%--<input id="form_password" name="form_password" class="form-control" type="text">--%>
                    <asp:TextBox ID="txtpass" type="password" class="form-control" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
              </div>
              <div class="checkbox pull-left mt-15">
                <label for="form_checkbox">
                  <input id="form_checkbox" name="form_checkbox" type="checkbox">
                  Remember me </label>
              </div> 
              <div class="form-group pull-right mt-10">
<%--                <button type="submit" class="btn btn-dark btn-sm">Login</button>--%>
                  <asp:Button ID="btn_log" class="btn btn-dark btn-sm" runat="server" Text="Log-In" OnClick="btn_log_Click"  />
              </div>
              <div class="clear text-center pt-10">
                <a class="text-theme-colored font-weight-600 font-12" href="#">Forgot Your Password?</a>
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
