<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="userweb.User.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <!-- Start main-content -->
    <div class="main-content">
        <form runat="server">
        <!-- Section: home -->
       
            <div class="container-fluid p-0">
                <div class="shutdown_notice">
                    <h1>
                        <center>EVENTS</center>
                    </h1>
                </div>
            </div>
        

        <!-- Section: About -->
        
            
       
        <div class="container">
                <div class="section-content">
                    <div class="row">
	<center><h2 class="strong">Stay up to date on events at the Park and in your city</h2></center>
	<center>Summerville and the Stars of Summerville are always on the go - stay tuned to catch them at Summerville or somewhere near you.</center>
 

</div></div>
        
        </div>
           <br /><br />
            
            
                <div class="container">
                    <div class="section-content">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <br />
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="thumb">
                                            <img src='../eventpic/<%#Eval("epic") %>' alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h4 class="name font-24 mt-0 mb-0"><%#Eval("ename") %></h4>
                                        <h5 class="mt-5">Date : <%#Eval("edate") %></h5>
                                        <p><%#Eval("description") %></p>

                                        
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [event]"></asp:SqlDataSource>
                    </div> </div> 
              
               
</form>
       </div>

</asp:Content>
