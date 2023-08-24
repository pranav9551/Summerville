<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Amsement_park1.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start main-content -->
    <div class="main-content">
        <form runat="server">
        <!-- Section: home -->
       
            <div class="container-fluid p-0">
                <div class="shutdown_notice">
                    <h2>
                        <center></center>
                    </h2>
                </div>
            </div>
        

        <!-- Section: About -->
        
            <div class="container">
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1 class="title font-36 text-theme-colored mt-30 mb-20">MENU</h1>
                            <p class="content">
                                Enjoy awesome Foods and Bevrages on world-class attractions at the Theme Park, Water Park, Snow Park, House of Stars, Glowmagica, and Eyelusion.<br><br>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
       
        <div class="container">
                <div class="section-content">
                    <div class="row">
	<h2 class="strong"></h2>
	

</div></div>
        <h4 class="mt-30"></h4>
        <div class="row">
          <div class="col-md-6">
            <p><h3 class="strong"></h3>
				&nbsp;

          </div>
          <div class="col-md-6">
            <p><h3 class="strong"></h3>
					&nbsp;

          </div>
        </div></div>
           
        <div class="container">
                <div class="section-content">
                    <div class="row">
	<h2 class="strong">Summerville Food-court</h2>
	The restaurant menu description of the dish should ideally paint a picture to the reader about what the dish looks like, what its texture is, and how it would taste. Words such as vibrant, leafy, encrusted, buttered, etc., lend a luxurious appearance to the dish. Rich, creamy, delicious, tender, sweet, and more give an excellent feel to the dish by mere words.<br>

</div></div></div><br /><br />
            

       
      <div class="container">
        <div class="section-content">
          <div class="row">
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                  <ItemTemplate>
            <div class="col-xs-6 col-sm-6 col-md-6 mb-40">
              <img src='..\Restaurantpic\<%#Eval("rpic") %>' alt="">
              <h3><%#Eval("rfname") %></h3>
              <ul class="list theme-colored">
                
                <li>Open Time : <%#Eval("rtime") %></li>
                <li>Food Specialities : <%#Eval("rspecial") %></li>
                <li>Descriptions : <%#Eval("descriptions") %></li>
              </ul>
                
            </div>
                      </ItemTemplate>
           </asp:Repeater>
                                      <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Restaurant]"></asp:SqlDataSource>

          </div>
        </div>
      </div>
</form>
       </div> 
</asp:Content>
