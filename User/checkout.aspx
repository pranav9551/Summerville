<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" Codefile="checkout.aspx.cs" Inherits="Amsement_park1.User.WebForm2" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!-- Start main-content -->
        <div class="main-content">

            <!-- Section: inner-header -->
            <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="images/bg/ticket_edited.jpg">
                <div class="container pt-90 pb-50">
                    <!-- Section Content -->
                    <div class="section-content pt-100">
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="title text-white">Ticket Booking</h3>
                                <ul class="list-inline text-white">
                                    <li>Home /</li>
                                    <li><span class="text-gray">Ticket Booking</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <div class="container pt-50 pb-50">
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <!-- Reservation Form Start-->
                        </div>
                        <div class="row">
                            <h4 class="text-theme-colored line-bottom ml-15 mb-30 mr-15">Ticket Booking</h4>

                            <div class="col-sm-6">
                                <div class="form-group mb-30">
                                    <label>Name</label>
                                    <%-- <input placeholder="Username" type="text" id="reservation_email" name="reservation_email" class="form-control" required="" aria-required="true">--%>
                                    <asp:TextBox ID="txtdes" runat="server" class="form-control" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group mb-30">
                                    <label>Name</label>
                                    <%-- <input placeholder="Username" type="text" id="reservation_email" name="reservation_email" class="form-control" required="" aria-required="true">--%>
                                    <asp:TextBox ID="txtname" runat="server" class="form-control" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group mb-30">
                                    <label>Email</label>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group mb-30">
                                    <label>Moblie No</label>
                                    <asp:TextBox ID="txtmob" runat="server" class="form-control" required=""></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True" TargetControlID="txtmob" FilterType="Numbers"></asp:FilteredTextBoxExtender>

                            </div>
                            </div>
                           
                                <div class="col-sm-6">
                                <div class="form-group mb-30">
                                    <label>Booking Date</label>
                                    <%--<input name="reservation_date" class="form-control required date-picker" type="text" placeholder="Pick A Date" aria-required="true">--%>
                                    <asp:TextBox ID="txtdate" class="form-control" runat="server"  OnTextChanged="txtdate_TextChanged"></asp:TextBox>

                                    <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtdate" ID="txtdate_CalendarExtender" Format="dd-MM-yyyy"></asp:CalendarExtender>
                                </div>              
   </div>                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <div class="col-sm-6">
                        <div class="form-group mb-30">
                        </div> 
                    </div>
                </div>

             
                  
                  
                  
              <!-- Reservation Form End-->

              <!-- Reservation Form Validation Start-->
             
              <!-- Reservation Form Validation Start -->
          </div>
        </div>
        </div>
            <br />
            
            <section style="left: 0px; top: -117px; height: 328px">
                 <div class="container">

                    <div class="section-content">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1" style="left: 1px; top: 0px">

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                    <table class="table table-striped table-bordered tbl-shopping-cart">
                                <thead>
                                    <tr style="height:40px;">
                                        <th style="width:125px; color:Silver; font-weight:bold; text-align:left;" 
                                            align="center">Category</th>
                                        <th style="width:125px; color:Silver; font-weight:bold; text-align:justify;" 
                                            align="center">Quantity</th>
                                        <th style="width:125px; color:Silver; font-weight:bold; text-align:justify;" 
                                            align="center">Price</th>
                                        <th style="width:125px; color:Silver; font-weight:bold; text-align:justify;" 
                                            align="center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                    <tr style="height:40px;">
                                        <td style="width:125px;"><label style="color:Silver; font-weight:bold; text-align:justify;">Adults</label></td>
                                        <td style="width:165px;">
                                            <asp:DropDownList ID="DropDownList2" runat="server"  width="50" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                <asp:ListItem>0</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 125px;">
                                          <asp:Label ID="lbladprice" runat="server" style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;">--%><%--</label>--%></td>
                                            </td>
                                        <td style="width:125px;">
                                        <asp:Label ID="lbladtot" runat="server" style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;">--%><%--</label>--%></td>  
                                   </tr>
                                        <tr style="height:40px;">
                                         <td style="width:125px;"><label style="color:Silver; font-weight:bold; text-align:justify;">Child</label></td>
                                        <td style="width:165px;">
                                            <asp:DropDownList ID="DropDownList3" runat="server"  width="50" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                                <asp:ListItem>0</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>

                                            <td style="width:125px;">
                                                <asp:Label ID="lblchldprice" runat="server" style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;">--%><%--</label>--%></td>
                                            <td style="width:125px;">
                                                <asp:Label ID="lblchtot" runat="server" style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;"></label>--%></td>
                                        </tr>

                                        <tr style="height:40px;"><td style="width:125px;"><label style="color:Silver; font-weight:bold; text-align:justify;">Sr.citizen</label></td>
                                        <td style="width:165px;">
                                            <asp:DropDownList ID="DropDownList4" runat="server" width="50" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                                <asp:ListItem>0</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                            <td style="width:125px;">
                                                <asp:Label ID="lblsrprice" runat="server" 
                                                    style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;"></label>--%></td>
                                            <td style="width:125px;">
                                                <asp:Label ID="lblsrtot" runat="server" 
                                                    style="color:Silver; font-weight:bold; text-align:justify;"></asp:Label><%--<label style="color:Silver; font-weight:bold; text-align:justify;"></label>--%></td>
                                        </tr>

                                        <tr style="height:40px;">
                                         <td style="width:125px;"><label style="color:Silver; font-weight:bold; text-align:justify;"> Total Amount </label></td>
                                         <td style="width:125px;"></td>
                                         <td style="width:125px;"></td>
                                         <td>
                                             <asp:Label ID="lbltotamt" runat="server" Text=""></asp:Label><%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%></td>
                                        </tr>
                                </tbody>
                             </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                                </div>
                            <br />
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ticket]"></asp:SqlDataSource>

                            </div>
                        </div>
                     </div>

            </section>

                 <div class="col-sm-12" style="left: 0px; top: -67px; height: 130px; margin-top: 13px">
                    <div class="form-group text-center mb-0 mt-20">
                       <asp:Button ID="Button1" runat="server" class="btn btn-colored btn-theme-colored btn-lg btn-flat border-left-theme-color-2-4px" Text="Submit" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <br />
                        </div>
                     </div>
            </div>
       
  <!-- end main-content -->
  
    </form>
    </form>
    </form>
</asp:Content>
