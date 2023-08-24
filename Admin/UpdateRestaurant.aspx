<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateRestaurant.aspx.cs" Inherits="Amsement_park1.Admin.WebForm46" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="content" class="main-content">
        <div class="container">
            <div class="container">
                <br />
                <center>
                    <h4>Update Gallery</h4>
                </center>

                <div class="row layout-top-spacing">

                    <div id="basic" class="col-lg-12 layout-spacing">
                        <div class="statbox widget box box-shadow">
                            <div class="widget-header">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                    </div>
                                </div>
                            </div>

                            <div class="widget-content widget-content-area">

                                <div class="row">
                                    <div class="col-lg-6 col-12 mx-auto">
                                        <form method="post" runat="server">


                                           
                                            <div class="form-group mb-4">
                                            <%--<input type="email" class="form-control" id="rEmail" placeholder="Email address *">--%>
                                            <label for="fullName">Park Name</label>
                                            <asp:DropDownList ID="ddlpark" runat="server" class="form-control  basic" DataSourceID="SqlDataSource1" DataTextField="ddlridecategory" DataValueField="Ridecatid"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ride_category]"></asp:SqlDataSource>
                                        </div>
                                        
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Restaurant Time</label>
                                            <asp:TextBox ID="txttime" Type="time" runat="server" class="form-control  basic" ></asp:TextBox>
                                        </div>
                                         <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Food Name</label>
                                            <asp:TextBox ID="txtfname" runat="server" class="form-control  basic" ></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName"> Food Type</label>
                                            <asp:TextBox ID="Txtftype" runat="server" class="form-control  basic"></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Restaurant Specialities</label>
                                            <asp:TextBox ID="txtspecial" runat="server" class="form-control-file" TextMode="MultiLine" ></asp:TextBox>
                                        </div>
                                            <div class="form-group">
                                                <h4>Upload Image</h4>
                                                <label for="t-text" class="sr-only">Text</label>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <div>
                                                    <asp:Image ID="Image1" runat="server"  />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <h4>Discription</h4>
                                                <label for="t-text" class="sr-only">Text</label>
                                                <%--<input id="t-text" type="text" name="txt" placeholder="Your Country Name..." class="form-control" required="">--%>
                                                <asp:TextBox ID="txtdis" placeholder="Your Theme Ride Discription..." class="form-control" runat="server"></asp:TextBox>
                                                <%--<input type="submit" name="txt" class="mt-4 btn btn-primary">--%>
                                            </div>
                                            <asp:Button ID="btnsub" class="mt-4 btn btn-primary" runat="server" Text="Submit" Height="35px" OnClick="btnsub_Click"   />
                                            <div>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            </div>

                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
