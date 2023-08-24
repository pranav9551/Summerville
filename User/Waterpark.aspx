<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Waterpark.aspx.cs" Inherits="userweb.User.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <title>SUMMERVILLE | WATERPARK</title>
    <!-- Start main-content -->
    <div class="main-content">
        <form runat="server">
        <!-- Section: home -->
       
            <div class="container-fluid p-0">
                <div class="shutdown_notice">
                    <h2>
                        <center>Now Open -  Water Park</center>
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
                                    <asp:Parameter DefaultValue="1005" Name="gtid" Type="Int32"></asp:Parameter>
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
                            <h1 class="title font-36 text-theme-colored mt-30 mb-20">Summer Ville Water Park</h1>
                            <h2 class="sub-heading">The best Water Park in and near Mumbai, Pune and Lonavala.</h2>
                            <p class="content">
                                Enjoy high-energy slides, chilled out attractions, great food and drinks, in a picturesque location.<br><br>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        
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
                                        <a href="Waterride.aspx?wrcid=<%#Eval("wrcid") %>">
                                            <div class="courses-thumb">
                                                <img class="img-fullwidth" src='..\wrcpic\<%#Eval("pic") %>' alt="">
                                            </div>
                                            <br />
                                            <h4><center><b><%#Eval("wrcname") %></b></center></h4>
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [waterridecategory]"></asp:SqlDataSource>
                    </div>
                </div>
                <br />
                <br />
                <div class="sec-btn-wrap">
                    <center>
                        <asp:Button ID="Btn_allride" runat="server" class="btn btn-colored btn-lg btn-flat btn-theme-colored pl-20 pr-20" Text="View all Rides & Attractions" Font-Size="Medium" PostBackUrl="~/User/waterparkride.aspx" />
                    </center>

                </div>
            </div>
        <!-- Section: Popular Courses -->
             
   
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
                                        <li>Unique thrills like Loopy Woopy &Swirl Whirl in India</li>
                                        <li>Wave pool & lazy river</li>
                                        <li>Group and solo slides & racers</li> 
                                        <li>Shopping & lounge areas</li>
                                        <li>Restaurants & bars</li>
                                       
                                     </ul>
                            </center>
                        </div> 

                    </div> 
                </div>
        
      
      
       
      

        <%--Party & Entertainment--%>
        
        
      <div class="container">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="title text-uppercase text-theme-colored line-bottom-center">Party & Entertainment</h2>
              
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
              <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                  <ItemTemplate>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                          <article class="post text-center clearfix bg-lighter mb-sm-30">
                              <div class="entry-header">
                                  <div class="post-thumb thumb">
                                      <img src='../Gallerypic/<%#Eval("pic") %>' alt="" class="img-responsive img-fullwidth">
                                  </div>
                              </div>
                              <div class="entry-content p-20">
                                  
                                  <p class="mt-5">  <%#Eval("description") %></p>
                              </div>
                          </article>
                      </div>
                  </ItemTemplate>
              </asp:Repeater>
              <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Gallery] WHERE ([gtid] = @gtid)">
                  <SelectParameters>
                      <asp:Parameter DefaultValue="1006" Name="gtid" Type="Int32"></asp:Parameter>
                  </SelectParameters>
              </asp:SqlDataSource>
          </div>
        </div>
      </div>
  <br /><br />

        <!-- Section: Trainers -->
       
         
   <br /><br />
        <%--About--%>
        <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <center>
                                <h2 class="strong alignCenter home-heading">About Summer Ville Water Park</h2>
                            </center>

                            <br />
                            <ul>
                                <li>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; The most loved water park located around Lonavala near Mumbai & Pune, themed on the beautiful city of Mykonos, Greece has been a hot spot to cool off for all the metro Aquaphile all year long! Summer Ville Water Park offers some of the best never-before seen fulfilling water rides, which blend in with the clean blue aqua experience.
                                    </p>
                                </li>
                            </ul>
                            <p>
                                &nbsp;&nbsp;&nbsp; Guests heading to Summer Ville Water Park for a day, promises to be nothing short of aqua-zing! You can ride your way to relax in the Lazy River or simply jump in with your friends & family into a unique body water slide called Splash.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; If that isn't enough challenge for your friends and yourself then a plunge down Loopy-Woopy's throat, is sure to set your pulse racing. A happy end to your day at the Water Park cannot be better than the ultimate wave pool experience. The energetic aqua waves and the peppy music create an endearing vibe that will wrap you around wanting for more! Summer Ville Water
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;  Park is much loved for its complete international Water Park experience; alongside the wide spread of sumptuous food and beverages served at multiple themed restaurants -that's sure to be a treat for your much craved post Aqua-fun hunger. Not only that, the shopping retail outlets will definitely leave your loved ones and you spoilt for choice.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                        Adjacent to Summer Ville Amusement Theme Park, Summer Ville Water Resorts finds itself enthroned happily uphill amidst the beautiful Sahyadri range unlike any other Water Park.
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;  For guests near Mumbai and Pune, various transportation modes are available to travel conveniently and reach Summer Ville Water Park, Khopoli that is closer from Lonavala too. The best route though remains the Mumbai-Pune Express highway that offers an enjoyable, approximately 90 min drive to the destination.
                            </p>
                    
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
                    <div class="row"><div class="col-md-12"><ul class="collapsible" itemscope="" itemtype="https://schema.org/FAQPage">
<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> How much do Summer Ville Water Park tickets cost?

<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> Current price of Summer Ville Water Park is Rs. 1399 + 18% GST for all guests. Pre-book Summer Ville tickets before we reopen and Save big. Click here to check Summer Ville tickets and offers.
</p></div></div></li>


<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> Do you need to book Summer Ville Water Park tickets in advance?

<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> We recommend booking online and availing exclusive online deals which are not available at the park counter.</p></div></div></li>


<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> What hotels are near Summer Ville Water Park?
<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> Novotel Summer Ville is a Luxury hotel adjacent to Summer Ville Water Park. We have exclusive <a href="/novotel-Summer Ville-khopoli/">Park + Stay + Breakfast</a> packages available.
</p></div></div></li>

<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> What restaurants are near Summer Ville Water Park?
<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> Within Summer Ville Water Park you can check out various restaurants like- Ammos food court, Red Bonnet Express diner, Sunbeatz by the pool, The Blue Stone Café, Salty’s wraps, and Cones serving ice-cream, smoothies, and more.</p></div></div></li>

<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> What attractions are near Summer Ville Water Park?
<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> You can enjoy Summer Ville Theme Park or Snow Park. Outside of Summer Ville one can visit different points of Lonavala which is only 20 minute drive from Summer Ville.
</p></div></div></li>

<li itemprop="mainEntity" itemscope="" itemtype="https://schema.org/Question"><div class="collapsible-header" itemprop="name"> What should I wear to Summer Ville Water Park?
<span class="pull-right"><i class="fa accordion-icon"></i></span></div><div itemprop="acceptedAnswer" itemscope="" itemtype="https://schema.org/Answer"><div itemprop="text"><p> You must wear appropriate swimming to wear when at Summer Ville Water Park. Closely go through the details <a href="https://www.Summer Villeworld.com/water-park/clothing-and-footwear/">here</a>. You may also purchase your swimwear either online on Summer Ville Store or directly at the park.</p></div></div></li></ul></div></div></div></section>

</div>
                </div>
           
        
        <!-- Theme park FAQs section ends here -->
            </form>
    </div>
        <!-- end main-content -->
 
</asp:Content>
