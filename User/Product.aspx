<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Amsement_park1.User.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>SUMMERVILLE | PRODUCTS</title>
    
    <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: home -->
    
      <div class="container-fluid p-0">
               <br />
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
                                    <asp:Parameter DefaultValue="2006" Name="gtid" Type="Int32"></asp:Parameter>
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
        

           
         
          <!-- end .rev_slider -->
        
        <!-- end .rev_slider_wrapper -->
        <script>
          $(document).ready(function(e) {
            $(".rev_slider").revolution({
              sliderType:"standard",
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
                  style:"zeus",
                  enable:true,
                  hide_onmobile:true,
                  hide_under:600,
                  hide_onleave:true,
                  hide_delay:200,
                  hide_delay_mobile:1200,
                  tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                  left: {
                    h_align:"left",
                    v_align:"center",
                    h_offset:30,
                    v_offset:0
                  },
                  right: {
                    h_align:"right",
                    v_align:"center",
                    h_offset:30,
                    v_offset:0
                  }
                },
                bullets: {
                  enable:true,
                  hide_onmobile:true,
                  hide_under:600,
                  style:"metis",
                  hide_onleave:true,
                  hide_delay:200,
                  hide_delay_mobile:1200,
                  direction:"horizontal",
                  h_align:"center",
                  v_align:"bottom",
                  h_offset:0,
                  v_offset:30,
                  space:5,
                  tmp:'<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
                }
              },
              responsiveLevels: [1240, 1024, 778],
              visibilityLevels: [1240, 1024, 778],
              gridwidth: [1170, 1024, 778, 480],
              gridheight: [650, 768, 960, 720],
              lazyType: "none",
              parallax: {
                  origo: "slidercenter",
                  speed: 1000,
                  levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 100, 55],
                  type: "scroll"
              },
              shadow: 0,
              spinner: "off",
              stopLoop: "on",
              stopAfterLoops: 0,
              stopAtSlide: -1,
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
    </section>

    <section>
      <div class="container pb-0">
        <div class="section-title text-center mb-30">
          <div class="row">
            <div class="col-md-12">
              <h2 class="mt-0 mb-5">New Collection</h2>
              <p class="font-16 mt-0">See what new products are available in our shop</p>
            </div>
          </div>
        </div>
          <div class="section-title text-center mb-30">
          <div class="row">
            <div class="col-md-12">
              <h2 class="mt-0 mb-5">TOYS</h2>
              
            </div>
          </div>
        </div>
        <div class="row multi-row-clearfix">
          <div class="col-md-12">
            <div class="products">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-30">
                            <div class="product">
                                
                                <div class="product-thumb">
                                    <img alt="" src='../Productpic/<%#Eval("pic") %>' class="img-responsive img-fullwidth">
                                    
                                </div>
                                <div class="product-details text-center">
                                    <a href="#">
                                        <h5 class="product-title"><%#Eval("pname") %></h5>
                                    </a>
                                  
                                    <div class="price"><span class="amount">Price : <%#Eval("price") %></span></div>
                                     <div class="price"><span class="amount">Offer : <%#Eval("description") %></span></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([pcid] = @pcid)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="pcid" Type="Int32"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
          </div>
        </div>
          <%--bag--%>
          <div class="section-title text-center mb-30">
          <div class="row">
            <div class="col-md-12">
              <h2 class="mt-0 mb-5">BAG</h2>
              
            </div>
          </div>
        </div>
          <div class="row multi-row-clearfix">
          <div class="col-md-12">
            <div class="products">
                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-30">
                            <div class="product">
                                
                                <div class="product-thumb">
                                    <img alt="" src='../Productpic/<%#Eval("pic") %>' class="img-responsive img-fullwidth">
                                    
                                </div>
                                <div class="product-details text-center">
                                    <a href="#">
                                        <h5 class="product-title"><%#Eval("pname") %></h5>
                                    </a>
                                  
                                    <div class="price"><span class="amount">Price : <%#Eval("price") %></span></div>
                                     <div class="price"><span class="amount">Offer : <%#Eval("description") %></span></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([pcid] = @pcid)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="pcid" Type="Int32"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
          </div>
        </div>
          <%--men--%>
           <div class="section-title text-center mb-30">
          <div class="row">
            <div class="col-md-12">
              <h2 class="mt-0 mb-5">T-SHIRTS</h2>
              
            </div>
          </div>
        </div>
          <div class="row multi-row-clearfix">
          <div class="col-md-12">
            <div class="products">
                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-30">
                            <div class="product">
                                
                                <div class="product-thumb">
                                    <img alt="" src='../Productpic/<%#Eval("pic") %>' class="img-responsive img-fullwidth">
                                    
                                </div>
                                <div class="product-details text-center">
                                    <a href="#">
                                        <h5 class="product-title"><%#Eval("pname") %></h5>
                                    </a>
                                  
                                    <div class="price"><span class="amount">Price : <%#Eval("price") %></span></div>
                                     <div class="price"><span class="amount">Offer : <%#Eval("description") %></span></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([pcid] = @pcid)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="pcid" Type="Int32"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
          </div>
        </div>
      </div>
    </section>

  

    <!-- Section: Shop  -->
   
    <!-- Divider: Call To Action -->
   
  <!-- end main-content -->

</asp:Content>
