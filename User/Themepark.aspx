<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Themepark.aspx.cs" Inherits="userweb.User.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Title -->
<title>SummerVille | THEME PARK </title>

<!-- Favicon and Touch Icons -->
<link href="images/fully.png" rel="shortcut icon" type="image/png">
    <link href="images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">



    <!-- Start main-content -->
    <div class="main-content">
        <form runat="server">
            <!-- Section: home -->

            <div class="container-fluid p-0">
                <div class="shutdown_notice">
                    <h2>
                        <center>Now Open - Theme Park</center>
                    </h2>
                </div>
                <!-- Slider Revolution Start -->
                <div class="rev_slider_wrapper">
                    <div class="rev_slider" data-version="5.0">
                        <ul>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <!-- SLIDE 1 -->
                                    <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Web Show" data-description="">
                                        <!-- MAIN IMAGE -->
                                        <img src='../Gallerypic/<%#Eval("pic") %>' alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="6" data-no-retina>
                                        <!-- LAYERS -->

                                        <!-- LAYER NR. 1 -->
                                        <div class="tp-caption tp-resizeme text-uppercase font-playfair text-white font-weight-600 m-0"
                                            id="rs-1-layer-1"
                                            data-x="['right']"
                                            data-hoffset="['30']"
                                            data-y="['middle']"
                                            data-voffset="['-125']"
                                            data-fontsize="['42']"
                                            data-lineheight="['64']"
                                            data-width="none"
                                            data-height="none"
                                            data-whitespace="nowrap"
                                            data-transform_idle="o:1;s:500"
                                            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                            data-start="1000"
                                            data-splitin="none"
                                            data-splitout="none"
                                            data-responsive_offset="on"
                                            style="z-index: 5; white-space: nowrap; font-weight: 700;">
                                            
                                        </div>

                                        <!-- LAYER NR. 2 -->
                                        <div class="tp-caption tp-resizeme text-white text-uppercase font-playfair font-weight-800"
                                            id="rs-1-layer-2"
                                            data-x="['right']"
                                            data-hoffset="['30']"
                                            data-y="['middle']"
                                            data-voffset="['-60']"
                                            data-fontsize="['72']"
                                            data-lineheight="['84']"
                                            data-width="none"
                                            data-height="none"
                                            data-whitespace="nowrap"
                                            data-transform_idle="o:1;s:500"
                                            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                            data-start="1000"
                                            data-splitin="none"
                                            data-splitout="none"
                                            data-responsive_offset="on"
                                            style="z-index: 5; white-space: nowrap; font-weight: 700;">
                                            
                                        </div>

                                        <!-- LAYER NR. 3 -->
                                        <div class="tp-caption tp-resizeme text-right font-raleway text-white"
                                            id="rs-1-layer-3"
                                            data-x="['right']"
                                            data-hoffset="['30']"
                                            data-y="['middle']"
                                            data-voffset="['30']"
                                            data-fontsize="['18']"
                                            data-lineheight="['34']"
                                            data-width="none"
                                            data-height="none"
                                            data-whitespace="nowrap"
                                            data-transform_idle="o:1;s:500"
                                            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                            data-start="1400"
                                            data-splitin="none"
                                            data-splitout="none"
                                            data-responsive_offset="on"
                                            style="z-index: 5; white-space: nowrap; font-weight: 400;">
                                           
                                        </div>

                                        <!-- LAYER NR. 4 -->
                                        <div class="tp-caption tp-resizeme"
                                            id="rs-1-layer-4"
                                            data-x="['right']"
                                            data-hoffset="['30']"
                                            data-y="['middle']"
                                            data-voffset="['100']"
                                            data-width="none"
                                            data-height="none"
                                            data-whitespace="nowrap"
                                            data-transform_idle="o:1;s:500"
                                            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                            data-start="1600"
                                            data-splitin="none"
                                            data-splitout="none"
                                            data-responsive_offset="on"
                                            style="z-index: 5; white-space: nowrap; letter-spacing: 1px;">
                                           
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [pic] FROM [Gallery] WHERE ([gtid] = @gtid)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1004" Name="gtid" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ul>
                    </div>
                    <!-- end .rev_slider -->
                </div>
                <!-- end .rev_slider_wrapper -->
                <script>
                    $(document).ready(function (e) {
                        var revapi = $(".rev_slider").revolution({
                            sliderType: "standard",
                            jsFileLocation: "js/revolution-slider/js/",
                            sliderLayout: "auto",
                            dottedOverlay: "none",
                            delay: 5000,
                            navigation: {
                                keyboardNavigation: "off",
                                keyboard_direction: "horizontal",
                                mouseScrollNavigation: "off",
                                onHoverStop: "off",
                                touch: {
                                    touchenabled: "on",
                                    swipe_threshold: 75,
                                    swipe_min_touches: 1,
                                    swipe_direction: "horizontal",
                                    drag_block_vertical: false
                                },
                                arrows: {
                                    style: "gyges",
                                    enable: true,
                                    hide_onmobile: false,
                                    hide_onleave: true,
                                    hide_delay: 200,
                                    hide_delay_mobile: 1200,
                                    tmp: '',
                                    left: {
                                        h_align: "left",
                                        v_align: "center",
                                        h_offset: 0,
                                        v_offset: 0
                                    },
                                    right: {
                                        h_align: "right",
                                        v_align: "center",
                                        h_offset: 0,
                                        v_offset: 0
                                    }
                                },
                                bullets: {
                                    enable: true,
                                    hide_onmobile: true,
                                    hide_under: 800,
                                    style: "hebe",
                                    hide_onleave: false,
                                    direction: "horizontal",
                                    h_align: "center",
                                    v_align: "bottom",
                                    h_offset: 0,
                                    v_offset: 30,
                                    space: 5,
                                    tmp: '<span class="tp-bullet-image"></span><span class="tp-bullet-imageoverlay"></span><span class="tp-bullet-title"></span>'
                                }
                            },
                            responsiveLevels: [1240, 1024, 778],
                            visibilityLevels: [1240, 1024, 778],
                            gridwidth: [1170, 1024, 778, 480],
                            gridheight: [620, 768, 960, 720],
                            lazyType: "none",
                            parallax: "mouse",
                            parallaxBgFreeze: "off",
                            parallaxLevels: [2, 3, 4, 5, 6, 7, 8, 9, 10, 1],
                            shadow: 0,
                            spinner: "off",
                            stopLoop: "on",
                            stopAfterLoops: 0,
                            stopAtSlide: 1,
                            shuffle: "off",
                            autoHeight: "off",
                            fullScreenAutoWidth: "off",
                            fullScreenAlignForce: "off",
                            fullScreenOffsetContainer: "",
                            fullScreenOffset: "0",
                            hideThumbsOnMobile: "off",
                            hideSliderAtLimit: 0,
                            hideCaptionAtLimit: 0,
                            hideAllCaptionAtLilmit: 0,
                            debugMode: false,
                            fallbacks: {
                                simplifyAll: "off",
                                nextSlideOnWindowFocus: "off",
                                disableFocusListener: false,
                            }
                        });
                    });
                </script>
                <!-- Slider Revolution Ends -->
            </div>


            <!-- Section: About -->

            <div class="container">
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1 class="title font-36 text-theme-colored mt-30 mb-20">Summer Ville Amusement Theme Park</h1>
                            <h2 class="sub-heading">Unique indoor & outdoor rides & shows make this India's favourite themed entertainment destination.</h2>
                            <p class="content">
                                The perfect destination for friends and family.
With thrilling indoor and outdoor roller coasters, several of India's first thematic shows &
attractions, a Grand Summer Ville Parade, and more, Summer Ville Theme Park has it all.
                            </p>

                        </div>
                    </div>
                </div>
            </div>


            <!-- Section: Popular Courses -->

            
             <%--RIDE--%>

            <div class="container pt-50">
                <div class="section-title text-center">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="title text-uppercase text-theme-colored line-bottom-center">International Standard Rides & Attractions</h2>

                        </div>
                    </div>
                </div>
                <div class="section-content">
                    <div class="row">
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="courses maxwidth500 mb-sm-30">
                                        <a href="Themeride.aspx?themercid=<%#Eval("themercid") %>">
                                            <div class="courses-thumb">
                                                <img class="img-fullwidth" src='..\Trcpic\<%#Eval("pic") %>' alt="">
                                            </div>
                                            <br />
                                            <h4><center><b><%#Eval("themercname") %></b></center></h4>
                                        </a>
                                    </div>
                                </div>
                                
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [themerc]"></asp:SqlDataSource>
                    </div>
                    <br />
                </div>
                
                <br />
                <br />
                <div class="sec-btn-wrap">
                    <center>
                        <asp:Button ID="Btn_allride" runat="server" class="btn btn-colored btn-lg btn-flat btn-theme-colored pl-20 pr-20" Text="View all Rides & Attractions" Font-Size="Medium" PostBackUrl="Themeparkride.aspx" />
                    </center>

                </div>
            </div>
            <div class="container pt-50">
                <div class="section-title text-center">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="title text-uppercase text-theme-colored line-bottom-center">Latest Offers &amp; Promotions</h2>

                        </div>
                    </div>
                    </div> 
                <div class="section-content">
                    <div class="row">
                        <center>
                         <ul class="list">
                                        <li>Unique attractions, for the the first time in India</li>
                                        <li>Thematic experiences like Mr. India & I for India</li>
                                        <li>Restaurants & bars with multiple cuisines</li> 
                                        <li>Indoor AC rides like Deep Space & Rajasaurus</li>
                                        <li>Outdoor roller coasters & rides</li>
                                        <li>Shopping & lounge areas</li>
                                     </ul>
                            </center>
                        </div> 

                    </div> 
                </div>
            
                    
       
           
       

            <%--4 Restaurants--%>
            
                <br />
                <br />

                <!-- Section: Trainers -->

                
   <br /><br />

          <%--  About--%>
                <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <center>
                                <h2 class="strong alignCenter home-heading">About Summer Ville Theme Park</h2>
                            </center>

                            <br />
                            <ul>
                                <li>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; Summer Ville Amusement Park, home to India's best in class themed entertainment offers world-class
service to guests from all over the country and the globe.
                                    </p>
                                </li>
                            </ul>
                            <p>
                                &nbsp;&nbsp;&nbsp;  Meticulously designed themes at Summer Ville weave an interesting Indian storyline through its
much-loved home-grown characters called Stars of Summer Ville.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; An escapade through this Adventure Park shall leave memories etched for a lifetime.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;  Summer Ville has curated many first of its kind offerings rearing to deliver an unmatched Amusement
Park experience for one and all! Truly a place where the fun never ends.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                        The fantastic thing about Summer Ville theme park is "There's a Whole Lot for Every Lot!". A wide range of Summer Ville's themed rides and attractions include Kiddie rides, Family rides, rides for Grown up's.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Right from Nitro's adrenaline-pumping experience to getting family and friends to help rescue Mr. India from Mogambo's terror, Summer Ville Amusement park engages you in interesting ways.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;  And for the kids, you can fly high with Tubbby Takes Off or indulge in some fun water splashing
aboard Splash Ahoy.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;  All this and more, put together including Summer Ville's uniquely designed attractions, therefore,
makes up for a great day of immersive entertainment experience that promises extraordinary fun,
joy, thrill, adrenaline, and everything in and around it to our guests! To tickle everyone's
taste buds is the wide range of lip-smacking cuisines served across the multiple in-park
restaurants.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                        Guests can opt for a great Staycation at Novotel Summer Ville which makes for a wonderful bundled
package with the Theme Park!
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                        A comfortable 90 min drive from Mumbai or Pune via the Mumbai-Pune Expressway, Summer Ville is
located near Lonavala at Khopoli and is a must-visit Adventure Park.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                        Located amidst picturesque and serene Sahyadri hills away from the hustle and bustle of the city,
Summer Ville serves a much-needed dose of break time over and again!
                            </p>
                            &nbsp;&nbsp;&nbsp; 
                    
                        </div>
                    </div>
                </div>


                <!-- Theme park FAQs section starts here -->


                <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <center>
                                <h2 class="strong alignCenter home-heading">Frequenty Asked Questions</h2>
                            </center>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="collapsible" itemscope="" itemtype="https://schema.org/FAQPage">
                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        When is Summer Ville opening?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Summer Ville Theme Park is Now Open every Friday to Sunday. For more details please visit <a href="https://www.Summer Villeworld.com/theme-park/now-open/">https://www.Summer Villeworld.com/theme-park/now-open/</a> </p>
                                        </div>
                                    </div>
                                </li>


                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        How much do Summer Ville Theme Park tickets cost?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Check our <a href="/tickets-and-offers/">‘Tickets and Offers’</a> page for the latest Summer Ville ticket pricing and related offers.</p>
                                        </div>
                                    </div>
                                </li>


                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Do you need to book Summer Ville tickets in advance?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>It is recommended to book your tickets well ahead of time either online or by calling us on <a href="tel:7292006554">+91 7292006554</a> to help skip ticketing queue and fast-track your entry to the park.</p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Can we buy tickets at Summer Ville?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>
                                                Yes. You can buy Tickets at the Park Ticket Counter on arrival. However, online bookings will assure savings upfront.
                                            </p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        How can I get a ticket discount at Summer Ville?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>our <a href="/tickets-and-offers/">‘Tickets and Offers’</a> shows all the available current deals and discounts</p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Do we need to pay extra for amusement park rides?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Your ticket entitles you unlimited access to all Theme Park rides and attractions. </p>
                                        </div>
                                    </div>
                                </li>



                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Will the amusement park Summer Ville offer group discounts?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>
                                                We have various deals suited to different needs. You can find the details under the  <a href="/tickets-and-offers/">‘Tickets and Offers’</a> section.
                                            </p>
                                        </div>
                                    </div>
                                </li>



                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What hotels are near Summer Ville?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p><a href="/novotel-Summer Ville-khopoli/">Novotel</a>  is the closest hotel to Summer Ville as it is part of our campus and offers luxurious stay.</p>
                                        </div>
                                    </div>
                                </li>


                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What attractions are near Summer Ville amusement park?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>
                                                One can enjoy different points of Lonavala which is only a 20 min drive from Summer Ville or explore the varied caves hidden in the Sahyadri range that surrounds Summer Ville.
                                            </p>
                                        </div>
                                    </div>
                                </li>



                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Does Summer Ville ticket include food?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Your ticket entitles you unlimited access to all Theme Park rides and attractions only. To save big, you can Pre-book the food voucher as an Add-on.</p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What is an express ticket in Summer Ville?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Express ticket allows one-time preferred access to select rides and attractions by skipping ride queue at the Theme Park.</p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What is the best time to visit Summer Ville?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Summer Ville is an All-season destination. You can plan your visit as per your comfort for any day in the year.</p>
                                        </div>
                                    </div>
                                </li>


                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Is the camera allowed in Summer Ville?
    <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Guests can bring their personal cameras for leisure photography. DSLR cameras with detachable lenses are allowed. However, the Park is not responsible for any damage or loss. Action cameras are allowed, however accessories are not. Some attractions have restrictions on usage and carriage of photography equipment.</p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What should we wear to Summer Ville an amusement park?
        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>We recommend wear something comfortable preferably western clothing which reduces the chances of your clothes getting stuck in a speedy ride. Clothing with rude, vulgar, or offensive language or graphics is not permitted, and shirts cannot be turned inside-out as a solution. </p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Is water bottle allowed in Summer Ville?
            <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>
                                                Yes.
                                            </p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        What is the parking rate over here?
                <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>
                                                Parking charge per day is as follows:<br>
                                                Bike – INR 50<br>
                                                Car –INR 100<br>
                                                Bus – INR 300
                                            </p>
                                        </div>
                                    </div>
                                </li>

                                <li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question">
                                    <div class="collapsible-header" itemprop="name">
                                        Are there any arrangements for staying near Summer Ville amusement park and waterpark?
                                        <span class="pull-right"><i class="fa accordion-icon"></i></span>
                                    </div>
                                    <div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer">
                                        <div itemprop="text">
                                            <p>Yes! You can stay at <a href="/novotel-Summer Ville-khopoli/">Novotel Summer Ville</a>.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
        </form>
    </div>
    <!-- Theme park FAQs section ends here -->

    <!-- end main-content -->



</asp:Content>
