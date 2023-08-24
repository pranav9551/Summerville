<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="Amsement_park1.User.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <title>SummerVille | FEEDBACK </title>

     <!-- start main-content -->
  <div class="main-content"> 
    <!-- Section: home -->
    <section id="home" class="">
      <div class="display-table text-center">
        <div class="display-table-cell">
          <div class="container pt-0 pb-0"><div class="row">
              <div class="col-md-10 col-md-offset-1">
                <h1 class="font-weight-300 font-64">User Feedback</h1>
                
             


                <form id="mailchimp-subscription-form" class="newsletter-form mt-0 mb-30 maxwidth500">
              		<label for="mce-EMAIL"></label>
                  <div class="input-group">
                    <%--<input type="email" id="mce-EMAIL" data-height="45px" class="form-control input-lg" placeholder="Your Feedback" name="EMAIL" value="">--%>
                      <asp:TextBox ID="txtsms" type="email"  data-height="45px" class="form-control input-lg" placeholder="Your Feedback"  value="" runat="server"></asp:TextBox>
                    <span class="input-group-btn">
<%--                      <button type="submit" class="btn btn-colored btn-theme-colored btn-xs m-0" data-height="45px" style="height: 45px;">Submit</button>--%>
                        <asp:Button ID="Button1" class="btn btn-colored btn-theme-colored btn-xs m-0" data-height="45px" style="height: 45px" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </span>
                  </div>
                </form>

                <!-- Mailchimp Subscription Form Validation-->
                <script type="text/javascript">
                  $('#mailchimp-subscription-form').ajaxChimp({
                      callback: mailChimpCallBack,
                      url: '//thememascot.us9.list-manage.com/subscribe/post?u=a01f440178e35febc8cf4e51f&amp;id=49d6d30e1e'
                  });

                  function mailChimpCallBack(resp) {
                      // Hide any previous response text
                      var $mailchimpform = $('#mailchimp-subscription-form'),
                          $response = '';
                      $mailchimpform.children(".alert").remove();
                      if (resp.result === 'success') {
                          $response = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                      } else if (resp.result === 'error') {
                          $response = '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                      }
                      $mailchimpform.prepend($response);
                  }
                </script>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    </section>
  <!-- end main-content -->
</asp:Content>
