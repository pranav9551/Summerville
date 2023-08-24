<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="summervilleuser1.asset.WebForm2" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<!DOCTYPE html>

<html dir="ltr" lang="en">

<!-- Mirrored from html.kodesolution.live/j/horseman/v2.0/demo/form-register-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jan 2022 10:55:08 GMT -->
<head>

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="description" content="Horseman | Equestrian & Horse Riding Training HTML Template" />
    <meta name="keywords" content="horse,equestrian,riding,racing,horseman,horsewomen,cavalier,jumping" />
    <meta name="author" content="ThemeMascot" />

    <!-- Page Title -->

    <title>SUMMER VILLE | REGISTRATION</title>

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
    <link href="css/css-plugin-collections.css" rel="stylesheet" />
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet" />
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
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
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
                                    <a class="text-white" href="Login.aspx">Login</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="widget m-0 pull-right flip sm-pull-none sm-text-center">
                            <ul class="list-inline pull-right flip">
                                <li class="mb-0 pb-0"></li>
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
                            <a href="index-mp-layout1.html" class="menuzord-brand pull-left flip xs-pull-center mt-20 mb-10">
                                <img alt="" src="images/f1.png"></a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-2">
                        <div class="widget no-border m-0">
                            <div class="mt-15 mb-10 text-right flip sm-text-center">
                                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-envelope text-theme-colored font-18"></i>Mail Us Today</div>
                                <a href="#" class="font-12 text-gray">info@yourdomain.com</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-2">
                        <div class="widget no-border m-0">
                            <div class="mt-15 mb-10 text-right flip sm-text-center">
                                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-map-marker text-theme-colored font-18"></i>Company Location</div>
                                <a href="#" class="font-12 text-gray">121 King Street, Melbourne</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-2">
                        <div class="widget no-border m-0">
                            <div class="mt-15 mb-10 text-right flip sm-text-center">
                                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-phone-square text-theme-colored font-18"></i>+(012) 345 6789</div>
                                <a href="#" class="font-12 text-gray">Call us for more details</a>
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
                            <h3 class="font-28 text-white">Registration</h3>
                            <ol class="breadcrumb text-center text-black mt-10">
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </div>
        <section>
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-6 col-md-push-3">
                        <form name="reg-form" class="register-form" method="post" runat="server">
                            <div class="icon-box mb-0 p-0">
                                <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                                    <i class="pe-7s-users"></i>
                                </a>
                                <h4 class="text-gray pt-10 mt-0 mb-30">Don't have an Account? Register Now.</h4>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Name</label>
                                    <%--                  <input name="form_name" class="form-control" type="text">--%>
                                    <asp:TextBox ID="txtname" class="form-control" runat="server" required="plese"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Mobile Number</label>
                                    <%--<input name="form_email" class="form-control" type="email">--%>
                                    <asp:TextBox ID="txtmob" class="form-control" runat="server" required="plese"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True" TargetControlID="txtmob" FilterType="Numbers"></asp:FilteredTextBoxExtender>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="form_choose_username">Email Id</label>
                                    <%--<input id="form_choose_username" name="form_choose_username" class="form-control" type="text">--%>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" required="plese"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="form_choose_password">Password</label>
                                    <%--<input id="form_choose_password" name="form_choose_password" class="form-control" type="text">--%>
                                    <asp:TextBox ID="txtpass" class="form-control" Type="password" runat="server" required="plese"></asp:TextBox>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Confirm Password</label>
                                    <%--<input id="form_re_enter_password" name="form_re_enter_password"  class="form-control" type="text">--%>
                                    <asp:TextBox ID="txtrepass" class="form-control" Type="password" runat="server" required="plese"></asp:TextBox>
                                </div>

                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match..." ControlToCompare="txtpass" ControlToValidate="txtrepass"></asp:CompareValidator>


                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="form-group mb-6">
                                            <label>Gender</label>
                                            <div class="styled-select">
                                                <%--                        <select id="course_name" name="course_name" class="form-control" required="" aria-required="true">--%>
                                                <asp:DropDownList ID="ddlgender" class="form-control" runat="server" required="plese">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Age</label>
                                        <%--<input id="form_re_enter_password" name="form_re_enter_password"  class="form-control" type="text">--%>
                                        <asp:TextBox ID="txtage" class="form-control" runat="server" required="plese"></asp:TextBox>
                                          <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True" TargetControlID="txtage" FilterType="Numbers"></asp:FilteredTextBoxExtender>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="form_choose_username">Address</label>
                                    <%--<input id="form_choose_username" name="form_choose_username" class="form-control" type="text">--%>
                                    <asp:TextBox ID="txtaddress" class="form-control" runat="server" required="plese"></asp:TextBox>
                                </div>
                            </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate> 
                            <div class="col-sm-6">
                                <div class="form-group mb-6">
                                    <label>Country</label>
                                    <div class="styled-select">
                                        <%--                        <select id="course_name" name="course_name" class="form-control" required="" aria-required="true">--%>
                                        <asp:DropDownList ID="ddlcountry" required="plese" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CName" DataValueField="cId" AutoPostBack="true">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
                                    </div>
                                </div>
                            
                                <div class="form-group mb-6">
                                    <label>State</label>
                                    <div class="styled-select">
                                        <%--                        <select id="course_name" name="course_name" class="form-control" required="" aria-required="true">--%>
                                        <asp:DropDownList ID="ddlstate" required="plese" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="sid" AutoPostBack="true">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [state] WHERE ([cid] = @cid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlcountry" PropertyName="SelectedValue" Name="cid" Type="Int32"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                            
                                <div class="form-group mb-6">
                                    <label>City</label>
                                    <div class="styled-select">
                                        <%--                        <select id="course_name" name="course_name" class="form-control" required="" aria-required="true">--%>
                                        <asp:DropDownList ID="ddlcity" required="plese" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="cityname" DataValueField="cityid" AutoPostBack="true">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [city] WHERE ([sid] = @sid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlstate" PropertyName="SelectedValue" Name="sid" Type="Int32"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                                    </ContentTemplate>
                           </asp:UpdatePanel>
                           
                            <div class="form-group">
                                <%--                <button class="btn btn-dark btn-lg btn-block mt-15" type="submit">Register Now</button>--%>
                                <asp:Button ID="btn_register" class="btn btn-dark btn-lg btn-block mt-15" runat="server" Text="Register" OnClick="btn_register_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            

        </section>
        <!-- end main-content -->

        <!-- Footer -->
        <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
        <!-- end wrapper -->

        <!-- Footer Scripts -->
        <!-- JS | Custom script for all pages -->
        <script src="js/custom.js"></script>
</body>

<!-- Mirrored from html.kodesolution.live/j/horseman/v2.0/demo/form-register-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jan 2022 10:55:08 GMT -->
</html>
