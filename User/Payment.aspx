<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Amsement_park1.User.Payment" %>

<!DOCTYPE html>

<html>

<head runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            left: 0px;
            top: -67px;
            height: 534px;
        }
        .auto-style3 {
            left: 0px;
            top: -1px;
        }
        .auto-style4 {
            width: 354px;
            height: 175px;
        }
    </style>
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
<link href="css/css-plugin-collections.css" rel="stylesheet"/>
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
<link  href="js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css"/>
<link  href="js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css"/>

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
<body class="">
    <div class="auto-style1">
  <!-- preloader -->
  

  
  <!-- Start main-content -->
<div class="auto-style2" style="margin-top: 13px">
                    <div class="form-group text-center mb-0 mt-20">
                        <br />
                        <br />
                        <br />
                        <img alt="" class="auto-style4" src="images/1920 1080.jpg   " /><br />
                        <br />
                        <div class="auto-style3">
            <h1 class="mt-0 pt-5"> RazorPay Order Form......</h1>
            <h3>Complete Your Payment.....</h3>
            <hr>

            <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
              <input type="hidden" name="cmd" value="_xclick">
              <input type="hidden" name="business" value="accounts@thememascot.com">
              <input type="hidden" name="item_name" value="Learn Advanced PHP in 7 Days">

              
    
              <input type="hidden" name="item_number" value="SL-1234">
              <input type="hidden" name="quantity" value="1">
              <input type="hidden" name="no_shipping" value="0">
              <input type="hidden" name="no_note" value="1">
              <input type="hidden" name="currency_code" value="USD">
              <input type="hidden" name="lc" value="US">
              <input type="hidden" name="bn" value="PP-BuyNowBF">

      
                 <button id="rzp-button1"  class="btn btn-colored btn-theme-colored btn-lg btn-flat border-left-theme-color-2-4px">Pay with Razorpay</button>
                <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
                <script>
                    var orderId = "<%=orderId%>"
                    var options = {
                        "name": "Summerville",
                        "description": "Tron Legacy",
                        "order_id": orderId,
                        "image": "https://s29.postimg.org/r6dj1g85z/daft_punk.jpg",
                        "prefill": {
                            "name": "Pranav Bhatt",
                            "email": "pbb022@gmail.com",
                            "contact": "+918200317674",
                        },
                        "notes": {
                            "address": "Hello World",
                            "merchant_order_id": "12312321",
                        },
                        "theme": {
                            "color": "#F37254"
                        }
                    }
                    // Boolean whether to show image inside a white frame. (default: true)
                    options.theme.image_padding = false;
                    options.handler = function (response) {
                        document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                        document.getElementById('razorpay_order_id').value = orderId;
                        document.getElementById('razorpay_signature').value = response.razorpay_signature;
                        document.razorpayForm.submit();
                    };
                    options.modal = {
                        ondismiss: function () {
                            console.log("This code runs when the popup is closed");
                        },
                        // Boolean indicating whether pressing escape key 
                        // should close the checkout form. (default: true)
                        escape: true,
                        // Boolean indicating whether clicking translucent blank
                        // space outside checkout form should close the form. (default: false)
                        backdropclose: false
                    };
                    var rzp = new Razorpay(options);
                    document.getElementById('rzp-button1').onclick = function (e) {
                        rzp.open();
                        e.preventDefault();
                    }
                </script>


          </div>
                        
             
                        <br />
                        <br />
                        <br />
                        </div>
                     </div>
  
  
  <!-- Footer -->
  
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

    </div>

</body>

</html>