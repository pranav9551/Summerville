﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Updateticp.aspx.cs" Inherits="Amsement_park1.Admin.WebForm39" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="content" class="main-content">
        <div class="container">
            <div class="container">
                <br/>
            <center><h4>Update Ticket Package</h4></center>
           
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
                                                <h4>Ticket Package Name</h4>
                                                <label for="t-text" class="sr-only">Text</label>
                                                <%--<input id="t-text" type="text" name="txt" placeholder="Your Country Name..." class="form-control" required="">--%>
                                                <asp:TextBox ID="txtticp" placeholder="Your State Name..." class="form-control" required="" runat="server"></asp:TextBox>
                                                <%--<input type="submit" name="txt" class="mt-4 btn btn-primary">--%>
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