<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="ridemaintenance.aspx.cs" Inherits="userweb.User.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="main-content">
        <div class="container">
            <div class="section-content">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1 class="title font-36 text-theme-colored mt-30 mb-20">Ride & Maintenance</h1>
                        <p class="content">
                            In addition to daily maintenance schedules, please keep the following ride & attraction maintenance schedule in mind while visiting Imagicaa. The schedule is subject to change without notice.<br>
                            <br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-12 mt-40">
                <hr>
              <center>  <h4 class="title">Theme Park Maintenance Schedule</h4></center>
                <div id="home" class="col-lg-12 layout-spacing" style="left: 1px; top: 5px">
                        <div class="statbox widget box box-shadow">

                            <div class="widget-header">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12" style="left: -1px; top: 0px">
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Themepark.themerideid, Themepark.Ridecatid, Themepark.themercid, Themepark.ridename, Themepark.rideimg, Themepark.ridediscription, Themepark.status, Ride_category.Ridecatid AS Expr1, Ride_category.ddlridecategory, themerc.themercid AS Expr2, themerc.themercname, themerc.pic FROM Themepark INNER JOIN Ride_category ON Themepark.Ridecatid = Ride_category.Ridecatid INNER JOIN themerc ON Themepark.themercid = themerc.themercid"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                                    <HeaderTemplate>

                                        <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                                            <div class="statbox widget box box-shadow">
                                                <table id="html5-extension" class="table table-hover non-hover" style="width: 100%">
                                                   
                                                    <thead>
                                                        <tr>
                                                            <th>Theme Id</th>
                                                            <th>Ride Category Name</th>
                                                             <th>Theme Category Name</th>
                                                            <th>Theme Ride Name</th>
                                                            <th>status</th>

                                                          
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                             <td class="checkbox-column text-center sorting_1"><%#Eval("themerideid") %></td>
                                            <td><%#Eval("ddlridecategory") %></td>
                                            <td><%#Eval("themercname") %></td>
                                            <td><%#Eval("ridename") %></td>
                                            <td><%#Eval("status") %></td>

                                            
                                               
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                            </table>
                        </div>
                   
            
                            </div>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

      <br />
       <br />

       <div class="row">
           
                <hr>
             <center>   <h4 class="title">Water Park Maintenance Schedule</h4></center>
                <div id="Watertable" class="col-lg-12 layout-spacing" style="left: 1px; top: 5px">
                        <div class="statbox widget box box-shadow">

                            <div class="widget-header">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12" style="left: -1px; top: 0px">
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Waterpark.waterrideid, Waterpark.Ridecatid, Waterpark.wrcid, Waterpark.ridename, Waterpark.rideimg, Waterpark.ridediscription, Waterpark.status, Ride_category.Ridecatid AS Expr1, Ride_category.ddlridecategory, Waterpark_1.waterrideid AS Expr2, Waterpark_1.Ridecatid AS Expr3, Waterpark_1.wrcid AS Expr4, Waterpark_1.ridename AS Expr5 FROM Waterpark INNER JOIN Ride_category ON Waterpark.Ridecatid = Ride_category.Ridecatid INNER JOIN Waterpark AS Waterpark_1 ON Ride_category.Ridecatid = Waterpark_1.Ridecatid"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                                    <HeaderTemplate>

                                        <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                                            <div class="statbox widget box box-shadow">
                                                <table id="html5-extension" class="table table-hover non-hover" style="width: 100%">
                                                    
                                                    <thead>
                                                        <tr>
                                                            <th>Water Id</th>
                                                            <th>Ride Category Name</th>
                                                            <th>Water Ride Name</th>
                                                            <th>status</th>

                                                           
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="checkbox-column text-center sorting_1"><%#Eval("waterrideid") %></td>
                                            <td><%#Eval("ddlridecategory") %></td>
                                            <td><%#Eval("ridename") %></td>
                                            
                                           
                                            <td><%#Eval("status") %></td>

                                          
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                            </table>
                        </div>
                   
            
                            </div>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
            </div>
      
    </div>


</asp:Content>
