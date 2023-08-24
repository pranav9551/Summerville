<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" Codefile="waterparkride.aspx.cs" Inherits="Amsement_park1.User.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <title>SUMMERVILLE | WATERPARK RIDE</title>

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
                                        <h4 class="pageTitle"><b>SLIDES, RIDES, AND ATTRACTIONS </b></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                <div class="section-content">
                    <div class="row">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="col-xs-12 col-sm-6 col-md-4">

                                    <article class="post text-center clearfix bg-lighter mb-sm-30">
                                        <div class="entry-header">
                                            <div class="post-thumb thumb">
                                                <img src='..\Waterparkridepic\<%#Eval("rideimg") %>' alt="" class="img-responsive img-fullwidth">
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

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Waterpark]">
                            
                        </asp:SqlDataSource>
                         
                    </div>
                </div>
            </div>
                </div> 
            </form> 
          </div> 
</asp:Content>
