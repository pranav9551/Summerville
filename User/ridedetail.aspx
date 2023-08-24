<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="ridedetail.aspx.cs" Inherits="Amsement_park1.User.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-content">
        <form runat="server">
            <!-- Section: inner-header -->
            <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="images/bg/bg1.jpg">
                <div class="container pt-90 pb-50">
                    <!-- Section Content -->
                    <div class="section-content pt-100">
                        <div class="row">
                        </div>
                    </div>
                </div>
            </section>

            <!-- Section: Experts Details -->
            <section>
                <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="thumb">
                                    <img src="images/photos/team-details.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h4 class="name font-24 mt-0 mb-0">Leslie Allen</h4>
                                <h5 class="mt-5">Horse Rider</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam vero expedita fugiat illo quasi doloremque, in unde omnis sint assumenda! Quaerat in, reprehenderit corporis voluptatum natus sequi reiciendis ullam. Quam eaque dolorum voluptates cupiditate explicabo.</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt culpa dicta quaerat qui recusandae possimus placeat quidem ipsam voluptates similique libero tempore, labore quasi delectus vero alias, consectetur blanditiis eum maxime sunt accusantium ipsa doloribus reiciendis. Ea quod reprehenderit deserunt. Veritatis omnis similique tempora delectus a consequuntur, quis.  Adipisicing elit. Nesciunt culpa dicta quaerat qui recusandae possimus placeat quidem ipsam voluptates similique libero tempore, labore quasi delectus vero alias.</p>

                            </div>
                        </div>
                        <div class="row mt-30">
                            <div class="col-md-4">
                                <h4 class="line-bottom">About Ride:</h4>
                                <div class="volunteer-address">
                                    <ul>
                                        <li>
                                            <div class="bg-light media border-bottom p-15 mb-20">
                                                <div class="media-left">
                                                    <i class="fa fa-trophy text-theme-colored font-24 mt-5"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-0">Achievement:</h5>
                                                    <ul class="list theme-colored m-0">
                                                        <li>Got Gold Medal on Individual jumping in Summer Olympics 2012</li>
                                                        <li>Got Bronze Medal on Team dressage in Summer Olympics 2012</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="bg-light media border-bottom p-15 mb-20">
                                                <div class="media-left">
                                                    <i class="fa fa-map-marker text-theme-colored font-24 mt-5"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-0">Address:</h5>
                                                    <p>Village 856 Broadway New York</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="bg-light media border-bottom p-15">
                                                <div class="media-left">
                                                    <i class="fa fa-phone text-theme-colored font-24 mt-5"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-0">Contact:</h5>
                                                    <p><span>Phone:</span> +262 695 2601<br>
                                                        <span>Email:</span> you@yourdomain.com</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="clearfix">
                                    <h4 class="line-bottom">FEEDBACK:</h4>
                                </div>
                                <asp:ScriptManager ID="ScriptManager1" runat="Server" EnablePartialRendering="true">
                                </asp:ScriptManager>

                                <div class="row">

                                    <div class="form-group">
                                        <textarea rows="5" placeholder="Enter Message" id="contact_message" name="contact_message" required class="form-control"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btn_sub" runat="server" class="btn btn-flat btn-dark btn-theme-colored mt-5" Text="Submit" />

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end main-content -->
        </form>
    </div>

</asp:Content>
