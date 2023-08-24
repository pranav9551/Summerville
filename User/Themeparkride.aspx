<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Themeparkride.aspx.cs" Inherits="userweb.User.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <title>SUMMERVILLE | THEMEPARK RIDE</title>

    <div class="main-content">
        <form runat="server">
            <br />
            <div class="container">
                <div class="section-content">
                    <div class="row">
                        <div class="product">
                            <div class="col-md-5">
                                <div class="product-image">
                                    <div class="zoom-gallery">
                                        <h4 class="pageTitle"><b>RIDES AND ATTRACTIONS </b></h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="product-summary">
                                    Enjoy international standard experiences for all ages
                                </div>

                            </div>

                        </div>

                    </div>
                </div>
                <ul id="myTab2" class="nav nav-pills boot-tabs">
                     <li class="active"><a href="#home" data-toggle="tab">Roller Coasters & Thrill Rides</a></li>
                    <li><a href="#profile" data-toggle="tab">Indoor AC Rides & Shows</a></li>
                    <li><a href="#family" data-toggle="tab">Family Rides</a></li>
                    <li><a href="#kids" data-toggle="tab">Kids Rides</a></li>
                </ul>
                <br />
                <div id="myTabContent2" class="tab-content">
                <div class="tab-pane fade in active" id="home">
                <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <asp:LinkButton ID="linknitro" runat="server">
                            <article class="post text-center clearfix bg-lighter mb-sm-30">
                                <div class="entry-header">
                                    <div class="post-thumb thumb">
                                        <img src='../Themeparkridepic/<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
                                    </div>
                                </div>
                                <div class="entry-content p-20">
                                    <div class="entry-meta">
                                         <p><%#Eval("ridediscription") %></p>
                                    </div>
                                   
                                </div>
                            </article>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="themercid" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                    </div> 
                <%--indoor ride--%>
                  <div class="tab-pane fade" id="profile">
               <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <asp:LinkButton ID="linknitro" runat="server">
                            <article class="post text-center clearfix bg-lighter mb-sm-30">
                                <div class="entry-header">
                                    <div class="post-thumb thumb">
                                        <img src='../Themeparkridepic/<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
                                    </div>
                                </div>
                                <div class="entry-content p-20">
                                    <div class="entry-meta">
                                         <p><%#Eval("ridediscription") %></p>
                                    </div>
                                   
                                </div>
                            </article>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="themercid" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                </div>
            <%--family rides--%>
                      <div class="tab-pane fade" id="family">
                         <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <asp:LinkButton ID="linknitro" runat="server">
                            <article class="post text-center clearfix bg-lighter mb-sm-30">
                                <div class="entry-header">
                                    <div class="post-thumb thumb">
                                        <img src='../Themeparkridepic/<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
                                    </div>
                                </div>
                                <div class="entry-content p-20">
                                    <div class="entry-meta">
                                         <p><%#Eval("ridediscription") %></p>
                                    </div>
                                   
                                </div>
                            </article>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="3" Name="themercid" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                    </div> 
                    <%--Kids rides--%>
                    <div class="tab-pane fade in active" id="kids">
                      <div class="container">
                    <div class="section-content">
                        <div class="row">
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4">
                                        <asp:LinkButton ID="linknitro" runat="server">
                            <article class="post text-center clearfix bg-lighter mb-sm-30">
                                <div class="entry-header">
                                    <div class="post-thumb thumb">
                                        <img src='../Themeparkridepic/<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
                                    </div>
                                </div>
                                <div class="entry-content p-20">
                                    <div class="entry-meta">
                                         <p><%#Eval("ridediscription") %></p>
                                    </div>
                                   
                                </div>
                            </article>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Themepark] WHERE ([themercid] = @themercid)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="4" Name="themercid" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                    </div> 
            </div>
            </div> 
        </form>
    </div>

</asp:Content>
