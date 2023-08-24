<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateTicket.aspx.cs" Inherits="Amsement_park1.Admin.WebForm48" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="content" class="main-content">
        <div class="container">
            <div class="container">
                <br/>
            <center><h4>Update Ticket</h4></center>
           
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
                                                                            

                                            <div class="form-group">
                                                
                                               
                                        <div class="form-group mb-4">
                                            <%--<input type="email" class="form-control" id="rEmail" placeholder="Email address *">--%>
                                            <label for="fullName">Adult Ticket Price</label>
                                            <asp:TextBox ID="txtatp" runat="server" class="form-control  basic" ></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Child Ticket Price</label>
                                            <asp:TextBox ID="txtctp" runat="server" class="form-control  basic" ></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Sr.citizen Ticket Price</label>
                                            <asp:TextBox ID="txtsctp" runat="server" class="form-control  basic" ></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <div>
                                                <label for="fullName"> Descriptions</label>
                                            </div>
                                            <asp:TextBox ID="txtdescription" runat="server" class="form-control-file" TextMode="MultiLine" ></asp:TextBox>
                                        </div>
                                                <asp:Button ID="btnsub" class="mt-4 btn btn-primary" runat="server" Text="Submit" Height="35px" OnClick="btnsub_Click"  />
                                                <div>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                    </div>
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
