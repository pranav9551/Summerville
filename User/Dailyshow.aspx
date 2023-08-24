<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Dailyshow.aspx.cs" Inherits="userweb.User.WebForm27" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>SUMMERVILLE | SHOW</title>

     <div class="container-fluid p-0">
                <div class="shutdown_notice">
                    <h1>
                        <center>SHOW</center>
                    </h1>
                </div>
            </div>
        

        <!-- Section: About -->
        
            
       
        <div class="container">
                <div class="section-content">
                    <div class="row">
	<center><h2 class="strong">Stay up to date on Shows at the Park and in your city</h2></center>
	<center>Summerville and the Stars of Summerville are always on the go - stay tuned to catch them at Summerville or somewhere near you.</center>
 

</div></div>
        
        </div>
           <br /><br />

    <div class="container">
        <div class="row multi-row-clearfix">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">

                        <div class="cardWrapper maxWidth--md">
                            <div class="cardItem">
                                <div class="cardImage">
                                    <img alt="Welcome Performance" class=" lazyloaded" src='../showpic/<%#Eval("image") %>'>
                                </div>
                                <div class="cardTitle">
                                    <h4><%#Eval("ddlshowcategory") %></h4>
                                </div>
                                <div class="cardContent">
                                    <%#Eval("discription") %><br>
                                    <i class="fa fa-clock-o"></i><%#Eval("time") %>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT show.showid, show.showcatid, show.day, show.time, show.image, show.discription, show_category.showcatid AS Expr1, show_category.ddlshowcategory FROM show INNER JOIN show_category ON show.showcatid = show_category.showcatid"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
