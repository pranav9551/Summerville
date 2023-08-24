<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BAT.aspx.cs" Inherits="Amsement_park1.User.WebForm14" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<!DOCTYPE html>

<html>

<head runat="server">

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="description" content="Horseman | Equestrian & Horse Riding Training HTML Template" />
    <meta name="keywords" content="horse,equestrian,riding,racing,horseman,horsewomen,cavalier,jumping" />
    <meta name="author" content="ThemeMascot" />

    <!-- Page Title -->

    <!-- Favicon and Touch Icons -->
    <link href="images/logo.png" rel="shortcut icon" type="image/png">
    <link href="images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
    <link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
    <link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

    <!-- Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/css-plugin-collections.css" rel="stylesheet" />
    <!-- CSS | menuzord megamenu skins -->
    <%--<link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>--%>
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

    <!-- Revolution Slider 5.x CSS settings -->
    <link href="js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css" />
    <link href="js/revolution-slider/css/layers.css" rel="stylesheet" type="text/css" />
    <link href="js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css" />

    <!-- CSS | Theme Color -->
    <link href="css/colors/theme-skin-yellow.css" rel="stylesheet" type="text/css">

    <!-- external javascripts -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="js/jquery-plugin-collection.js"></script>

    <!-- Revolution Slider 5.x SCRIPTS -->
    <script src="js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
    <script src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
    <div id="wrapper" class="clearfix">
        <!-- preloader -->


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
                                        <a class="text-white" href="Login.aspx">Login</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="widget m-0 pull-right flip sm-pull-none sm-text-center">
                                <ul class="list-inline pull-right flip">
                                    <li class="mb-0 pb-0">
                                        <div class="top-dropdown-outer pt-5 pb-10">
                                            <a class="top-cart-link has-dropdown text-white"><i class="fa fa-shopping-cart font-13"></i>(12)</a>
                                            <ul class="dropdown">
                                                <li>
                                                    <!-- dropdown cart -->
                                                    <div class="dropdown-cart">
                                                        <table class="table cart-table-list table-responsive">
                                                            <tbody>
                                                                <tr>
                                                                    <td><a href="#">
                                                                        <img alt="" src="images/products/sm1.jpg"></a></td>
                                                                    <td><a href="#">Product Title</a></td>
                                                                    <td>X3</td>
                                                                    <td>$ 100.00</td>
                                                                    <td><a class="close" href="#"><i class="fa fa-close font-13"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a href="#">
                                                                        <img alt="" src="images/products/sm2.jpg"></a></td>
                                                                    <td><a href="#">Product Title</a></td>
                                                                    <td>X2</td>
                                                                    <td>$ 70.00</td>
                                                                    <td><a class="close" href="#"><i class="fa fa-close font-13"></i></a></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <div class="total-cart text-right">
                                                            <table class="table table-responsive">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Cart Subtotal</td>
                                                                        <td>$170.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Shipping and Handling</td>
                                                                        <td>$20.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Order Total</td>
                                                                        <td>$190.00</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="cart-btn text-right">
                                                            <a class="btn btn-theme-colored btn-xs" href="shop-cart.html">View cart</a>
                                                            <a class="btn btn-dark btn-xs" href="shop-checkout.html">Checkout</a>
                                                        </div>
                                                    </div>
                                                    <!-- dropdown cart ends -->
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="mb-0 pb-0">
                                        <div class="top-dropdown-outer pt-5 pb-10">
                                            <a class="top-search-box has-dropdown text-white"><i class="fa fa-search font-13"></i>&nbsp;</a>
                                            <ul class="dropdown">
                                                <li>
                                                    <div class="search-form-wrapper">
                                                        <form method="get" class="mt-10">
                                                            <input type="text" onfocus="if(this.value =='Enter your search') { this.value = ''; }" onblur="if(this.value == '') { this.value ='Enter your search'; }" value="Enter your search" id="searchinput" name="s" class="">
                                                            <label>
                                                                <input type="submit" name="submit" value=""></label>
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
                                    <li><a href="https://www.instagram.com/summerrville_22/"><i class="fa fa-instagram text-white"></i></a></li>
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
                                <a href="index-mp-layout1.html" class="menuzord-brand pull-left flip xs-pull-center mt-20 mb-10">
                                    <img alt="" src="images/logo1.jpeg"></a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-2">
                            <div class="widget no-border m-0">
                                <div class="mt-15 mb-10 text-right flip sm-text-center">
                                    <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-envelope text-theme-colored font-18"></i>Mail Us Today</div>
                                    <a href="#" class="font-12 text-gray">summervilleproject22@gmail.com</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-2">
                            <div class="widget no-border m-0">
                                <div class="mt-15 mb-10 text-right flip sm-text-center">
                                    <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-map-marker text-theme-colored font-18"></i>Company Location</div>
                                    <a href="#" class="font-12 text-gray">Bruj Khalifa,Dubai.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-2">
                            <div class="widget no-border m-0">
                                <div class="mt-15 mb-10 text-right flip sm-text-center">
                                    <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-phone-square text-theme-colored font-18"></i>+91 9909761368</div>
                                    <a href="#" class="font-12 text-gray">Call us for more details</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="header-nav">
                <div class="header-nav-wrapper navbar-scrolltofixed bg-lighter">
                    <div class="container">
                        <nav id="menuzord" class="menuzord pull-left flip menuzord-responsive" style="left: 0px; top: 0px; height: 69px">
                            <div id="top-search-bar" class="collapse">
                                <div class="container">
                                    <form role="search" action="#" class="search_form_top" method="get">
                                        <input type="text" placeholder="Type text and press Enter..." name="s" class="form-control" autocomplete="off">
                                        <span class="search-close"><i class="fa fa-search"></i></span>
                                    </form>
                                </div>
                            </div>
                            <ul class="menuzord-menu">
                                <li><a href="Home.aspx">HOME</a>

                                </li>
                                <li><a href="Themepark.aspx">THEME PARK</a>

                                </li>
                                <li><a href="Waterpark.aspx">WATER PARK</a>

                                </li>

                                </li>
               
                                <li><a href="#">RIDES</a>
                                    <ul class="dropdown">
                                        <li><a href="Themeparkride.aspx">Themepark Rides</a></li>
                                        <li><a href="waterparkride.aspx">Waterpark Rides</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">SHOW</a>
                                    <ul class="dropdown">
                                        <li><a href="Dailyshow.aspx">Daily Performances</a></li>

                                    </ul>
                                </li>
                                </li>
               
                                <li><a href="Event.aspx">EVENTS</a>

                                </li>
                                </li>
               
                                <li><a href="#">RESTAURANTS</a>
                                    <ul class="dropdown">
                                        <li><a href="Menu.aspx">Menu</a></li>
                                        <li><a href="booknow.aspx">Book Table</a></li>
                                    </ul>
                                </li>
                                <li><a href="Ticketoffers.aspx">TICKETS AND OFFERS</a>

                                <li><a href="Product.aspx">PRODUCTS</a>


                                    <li><a href="Feedback.aspx">FEEDBACK</a>

                                    </li>


                                </li>

                            </ul>
                            <ul class="pull-right flip hidden-sm hidden-xs" style="margin-left: 0px">
                                <li>
                                    <!-- Ajax Popup form Starts -->
                                    <%--                  <ul class="pull-right flip hidden-sm hidden-xs">--%>
                                    <%--<li>--%>
                                    <!-- Ajax Popup form Starts -->
                                    <%--                <a class="btn btn-colored btn-flat top-left-triangle bg-theme-colored text-white font-14 ajaxload-popup p-10 mt-15 pr-30 pl-15" href="ajax-load/reservation-form.html" style="left: 86px; top: -67px; width: 133px">Book Now</a>--%>
                                    <!-- Ajax Popup form End -->
                                    <%--   </li>--%>
                                    <%--            </ul>--%>
                                    <!-- Ajax Popup form End -->
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <!-- Start main-content -->

        <form runat="server">
           
            <title>SUMMERVILLE | Table Booking </title>



    <!-- Start main-content -->
    <div class="main-content">
        <!-- Section: home -->
        <section id="home" class="divider parallax fullscreen layer-overlay overlay-dark-9" data-bg-img="images/bg/loginimg.jpg">
            <div class="display-table">
                <div class="display-table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-md-push-3">

<%--                                <form name="frm1" class="register-form form-transparent" runat="server">--%>
                                    <div class="icon-box mb-0 p-0">
                                        <h3 class="font-28 text-white">Table Booking</h3>
                                        <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                                            <i class="pe-7s-users"></i>
                                        </a>
                                        <h4 class="text-theme-colored pt-10 mt-0 mb-30">Just Fill In the Form For Table Booking...</h4>
                                    </div>
                                    <hr>
                                    <div>
                                    </div>

                                      <div class="row">
                                        <div class="form-group col-md-6">
                                            <label>User Id</label>
                                            <%--<input name="form_name" class="form-control" type="text">--%>
                                            <asp:TextBox ID="txtuid" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                        </div>
                                          </div> 
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label>Name</label>
                                            <%--<input name="form_name" class="form-control" type="text">--%>
                                            <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Email Address</label>
                                            <%--<input name="form_email" class="form-control" type="email">--%>
                                            <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Email"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label>Mobile No</label>
                                            <asp:TextBox ID="txtmobno" class="form-control" runat="server" placeholder="Mobile No"></asp:TextBox>
                                            <%--<input name="form_name" class="form-control" type="text">--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>No Of Person</label>
                                            <asp:TextBox ID="txtper" class="form-control" runat="server" placeholder="No Of Person"></asp:TextBox>

                                            <%--<input name="form_email" class="form-control" type="email">--%>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label>Current Date</label>
                                            <asp:TextBox ID="txtdate" runat="server" class="form-control" placeholder="Current Date" OnTextChanged="txtdate_TextChanged"></asp:TextBox>

                                        </div>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                        <div class="form-group col-md-6">
                                            <label>Bokking Date</label>
            <asp:TextBox ID="txtbookdate" class="form-control" runat="server" OnTextChanged="txtdate_TextChanged"></asp:TextBox>

            <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtbookdate" ID="txtdate_CalendarExtender" Format="dd-MM-yyyy" ></asp:CalendarExtender>
                        <br />
             
                    </div>
                  </div>
                 
                  <div class="form-group">
                    <%--<button class="btn btn-theme-colored btn-lg btn-block mt-15" type="submit">Book Now</button>--%>
        <asp:Button ID="btnsub" class="btn btn-theme-colored btn-lg btn-block mt-15" runat="server" Text="Button" type="submit" OnClick="btnsub_Click"   />
                      
                      <br />
                              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                      <br />
               
                  </div>
                 
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </section>
       
   
  <!-- end main-content -->
    </div>
                           </form>
 
            
            
            
            
            
            
            
            
            
            
            
            
            

            <br/>
  <!-- Footer -->
  <footer id="footer">
    <section class="divider layer-overlay overlay-dark-8" data-bg-img="images/bg/loginimg.jpg">
      <div class="container pt-60 pb-30">
        <div class="row">
          <div class="col-sm-6 col-md-3">
            <div class="widget dark">
              <img class="mt-5 mb-10" alt="" src="images/LOGO_Black-removebg-preview.png">
              <p>Bruj Kahlifa, Dubai.</p>
              <ul class="list-inline mt-5">
                <li class="m-0 pl-10 pr-10"> <i class="fa fa-phone text-theme-colored mr-5"></i> <a class="text-gray" href="#">+91 990976136868</a> </li>
                <li class="m-0 pl-10 pr-10"> <i class="fa fa-envelope-o text-theme-colored mr-5"></i> <a class="text-gray" href="#">summerville22@gmail.com</a> </li>
              </ul>            
              <h5 class="widget-title mt-10 mb-10">Connect With Us</h5>
              <ul class="styled-icons icon-sm icon-bordered icon-theme-colored">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="https://www.instagram.com/summerrville_22/"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="widget dark">
              <h4 class="widget-title line-bottom-theme-colored">Useful Links</h4>
              <ul class="list angle-double-right list-border">
                <li><a href="About.aspx">About</a></li>
                <li><a href="page-membership.html">Membership</a></li>
<%--                <li><a href="page-riding-school.html">Riding School</a></li>--%>
<%--                <li><a href="page-our-horses.html">Our Horses</a></li>--%>
                <li><a href="shop-category-sidebar.html">Shop</a></li>              
              </ul>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="widget dark">            
              <%--<h4 class="widget-title line-bottom-no-border">Photos from Flickr</h4>--%>
              <div id="flickr-feed" class="clearfix mt-30">
                <!-- Flickr Link -->
                <script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=9&amp;display=latest&amp;size=s&amp;layout=x&amp;source=user&amp;user=52617155@N08">
                </script>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="widget dark">
              <h4 class="widget-title line-bottom-theme-colored">Opening Hours</h4>
              <div class="opening-hourse">
                <ul class="list list-border text-gray-darkgray">
                  <li class="clearfix"> <span><i class="fa fa-clock-o mr-5"></i> Mond -Tuesday :</span>
                    <div class="value pull-right flip"> 9.00 am - 10.00 pm </div>
                  </li>
                  <li class="clearfix"> <span><i class="fa fa-clock-o mr-5"></i> Wed - Thurs :  </span>
                    <div class="value pull-right flip"> 10.00 am - 8.00 pm </div>
                  </li>
                  <li class="clearfix"> <span class="text-theme-colored"><i class="fa fa-clock-o mr-5"></i> Friday : </span>
                    <div class="value pull-right flip text-theme-colored"> 10.00 am - 6.00 pm </div>
                  </li>
                  <li class="clearfix"> <span><i class="fa fa-clock-o mr-5"></i> Saturday : </span>
                    <div class="value pull-right flip"> 2.00 pm - 8.00 pm </div>
                  </li>
                  <li class="clearfix"> <span><i class="fa fa-clock-o mr-5"></i> Sunday :</span>
                    <div class="value pull-right flip"> <span class="text-highlight bg-theme-colored text-white">Colsed</span>  </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container-fluid p-20" data-bg-color="#253944">
        <div class="row text-center">
          <div class="col-md-12">
            <p class="text-white font-11 m-0">Copyright &copy;2022. All Rights Reserved By Summerville</p>
          </div>
        </div>
      </div>
    </section>
  </footer>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->       
<script src="js/custom.js"></script>

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
      (Load Extensions only on Local File Systems ! 
       The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>

</body>

</html>
