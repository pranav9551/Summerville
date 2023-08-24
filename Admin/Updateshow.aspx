<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Updateshow.aspx.cs" Inherits="Amsement_park1.Admin.WebForm26" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="content" class="main-content">
        <div class="container">
            <div class="container">
                <br />
                <center>
                    <h4>Update Show</h4>
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


                                            <div class="form-group">
                                                
                                             
                                                 <div class="form-group">
                                                    <h4>Show Day</h4>
                                                    <label for="t-text" class="sr-only">Text</label>
                                                    <%--<input id="t-text" type="text" name="txt" placeholder="Your Country Name..." class="form-control" required="">--%>
                                                    <asp:TextBox ID="txtday" Type="day" placeholder="Your Show Name..." class="form-control" required="" runat="server"></asp:TextBox>
                                                    <%--<input type="submit" name="txt" class="mt-4 btn btn-primary">--%>
                                                </div>
                                                 <div class="form-group">
                                                    <h4>Show Time</h4>
                                                    <label for="t-text" class="sr-only">Text</label>
                                                    <%--<input id="t-text" type="text" name="txt" placeholder="Your Country Name..." class="form-control" required="">--%>
                                                    <asp:TextBox ID="txttime"  placeholder="Your Show Name..." class="form-control" required="" runat="server"></asp:TextBox>
                                                    <%--<input type="submit" name="txt" class="mt-4 btn btn-primary">--%>
                                                </div>
                                               
                                                 
                                                <div class="form-group">
                                                    <h4>Show Image</h4>
                                                    <label for="t-text" class="sr-only">Text</label>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    <div>
                                                    <asp:Image ID="Image1" runat="server"  />
                                                </div>
                                                </div>
                                                <div class="form-group">
                                                    <h4>Show Discription</h4>
                                                    <label for="t-text" class="sr-only">Text</label>
                                                    <%--<input id="t-text" type="text" name="txt" placeholder="Your Country Name..." class="form-control" required="">--%>
                                                    <asp:TextBox ID="txtdis" placeholder="Your Theme Ride Discription..." class="form-control" required="" runat="server"></asp:TextBox>
                                                    <%--<input type="submit" name="txt" class="mt-4 btn btn-primary">--%>
                                                </div>
                                                <asp:Button ID="btnsub" class="mt-4 btn btn-primary" runat="server" Text="Submit" Height="35px" OnClick="btnsub_Click" />
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
