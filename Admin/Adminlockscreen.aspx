﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlockscreen.aspx.cs" Inherits="Amsement_park1.Admin.Adminlockscreen" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from designreset.com/cork/ltr/demo4/auth_lockscreen_boxed.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jan 2022 11:52:09 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Lockscreen Boxed | CORK - Multipurpose Bootstrap Dashboard Template </title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/authentication/form-2.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css">
    <link rel="stylesheet" type="text/css" href="assets/css/forms/switches.css">
</head>
<body class="form no-image-content">
    

    <div class="form-container outer">
        <div class="form-form">
            <div class="form-form-wrap">
                <div class="form-container">
                    <div class="form-content">

                        <div class="d-flex user-meta">
                            <%--<img src="assets/img/profile-7.jpg" class="usr-profile" alt="avatar">--%>
                            <asp:Image ID="Imgapic" runat="server" alt="avatar"/>
                            <div class="">
                                <%--<p class="">Shaun Park</p>--%>
                                <asp:Label ID="lblaname" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </div>
                        </div>

                        <form class="text-left" runat="server">
                            <div class="form">
                                <div id="password-field" class="field-wrapper input mb-2">
                                    <div class="d-flex justify-content-between">
                                        <label for="password">PASSWORD</label>
                                        <a href="auth_pass_recovery_boxed.html" class="forgot-pass-link">Forgot Password?</a>
                                    </div>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                                    <%--<input id="password" name="password" type="password" class="form-control" placeholder="Password">--%>
                                    <asp:TextBox ID="txtpass" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" id="toggle-password" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                </div>
                                <div class="d-sm-flex justify-content-between">
                                    <div class="field-wrapper">
                                        <%--<button type="submit" class="btn btn-primary" value="">Unlock</button>--%>
                                        <asp:Button ID="btn_sub" runat="server" Text="Unlock" class="btn btn-primary" OnClick="btn_sub_Click"/>
                                    </div>
                                </div>
                                 <div class="d-flex justify-content-between">
                                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                                    </div>

                            </div>
                        </form>

                    </div>                    
                </div>
            </div>
        </div>
    </div>

    
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/authentication/form-2.js"></script>

</body>

<!-- Mirrored from designreset.com/cork/ltr/demo4/auth_lockscreen_boxed.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jan 2022 11:52:09 GMT -->
</html>