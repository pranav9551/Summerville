<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeFile="Ticketoffers.aspx.cs" Inherits="userweb.User.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <title>SUMMERVILLE | PRODUCTS</title>

    <!-- Start main-content -->
    <div class="main-content">
        <form runat="server">
        <!-- Section: home -->
       
           
        

        <!-- Section: About -->
        
           <section>
      <div class="container pb-0">
        <div class="section-content">
          <div class="row">
            <div class="shutdown_notice">
                    <h2>
                        <center>Now Open - Theme, Water, Snow Park & Novotel Stay</center>
                    </h2>
                </div>
          </div>  
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <div class="pricing-table">
                                <div class="table-title">
                                    <h2><%#Eval("tpname") %></h2>
                                </div>
                                <div class="table-price">
                                    <ul class="table-list border-bottom p-0">
                                        <li>Adult : <%#Eval("tadult") %></li>
                                        <li></li>
                                        <li>Child : <%#Eval("tchild") %></li>
                                        <li></li>
                                        <li>Sr.Citizen : <%#Eval("tsrcitizen") %></li>
                                        <li><a class="pricebutton" href='checkout.aspx?tpid=<%#Eval("tpid")%><%--&ParkID=<%#Eval("ParkID")%>--%>' rel="nofollow"><span class="icon-tag"></span> Check Out</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Ticket.tid, Ticket.tpid, Ticket.tadult, Ticket.tchild, Ticket.tsrcitizen, Ticket.descriptions, TicketPackage.tpid AS Expr1, TicketPackage.tpname FROM Ticket INNER JOIN TicketPackage ON Ticket.tpid = TicketPackage.tpid"></asp:SqlDataSource>
        </div>
      </div>
    </section>

</form>
       </div> 
</asp:Content>

