<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Themeride.aspx.cs" Inherits="userweb.User.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Slider Revolution Start -->
    <div class="rev_slider_wrapper">
        <div class="rev_slider" data-version="5.0">
            <ul>
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <!-- SLIDE 1 -->
                        <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Web Show" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src='../Themeparkridepic/<%#Eval("rideimg") %>' alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="6" data-no-retina>
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

                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                    <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="themercid" Name="themercid" Type="Int32"></asp:QueryStringParameter>
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
    <div class="main-content">
        <form runat="server">
            <br />
            <div class="container">
                <div class="section-content">
                    <div class="section-title text-center mb-30">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="mt-0 mb-5">THEMEPARK RIDES AND ATTRACTIONS</h2>
                                <p class="font-16 mt-0">Enjoy international standard experiences for all ages</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="col-xs-12 col-sm-6 col-md-4">

                                    <article class="post text-center clearfix bg-lighter mb-sm-30">
                                        <div class="entry-header">
                                            <div class="post-thumb thumb">
                                                <img src='..\Themeparkridepic\<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
                                            </div>
                                        </div>
                                        <div class="entry-content p-20">
                                            <div class="entry-meta">
                                                <p><%#Eval("ridediscription") %></p>
                                            </div>

                                        </div>
                                    </article>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="themercid" Name="themercid" Type="Int32"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>


        </form>
    </div>
</asp:Content>
