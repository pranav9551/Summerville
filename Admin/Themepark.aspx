﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeFile="Themepark.aspx.cs" Inherits="Amsement_park1.Admin.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BEGIN PAGE LEVEL CUSTOM STYLES -->
    <link href="assets/css/scrollspyNav.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css">
    <link href="assets/css/tables/table-basic.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL CUSTOM STYLES -->
    <!-- Mirrored from designreset.com/cork/ltr/demo4/table_dt_html5.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Jan 2022 11:51:48 GMT -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <link href="assets/css/loader.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/loader.js"></script>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL CUSTOM STYLES -->
    <link rel="stylesheet" type="text/css" href="plugins/table/datatable/datatables.css">
    <link rel="stylesheet" type="text/css" href="plugins/table/datatable/custom_dt_html5.css">
    <link rel="stylesheet" type="text/css" href="plugins/table/datatable/dt-global_style.css">
    <!-- END PAGE LEVEL CUSTOM STYLES -->

    <!-- BEGIN PAGE LEVEL CUSTOM STYLES -->
    <link href="assets/css/scrollspyNav.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css">
    <link href="assets/css/tables/table-basic.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL CUSTOM STYLES -->

    <!--  BEGIN NAVBAR  -->
    <div class="sub-header-container">
        <header class="header navbar navbar-expand-sm">
            <a href="javascript:void(0);" class="sidebarCollapse" data-placement="bottom">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu">
                    <line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></a>

            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">

                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0);"> Ride Details</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>ThemePark Ride</span></li>
                            </ol>
                        </nav>
                    </div>
                </li>
            </ul>
        </header>
    </div>
    <!--  END NAVBAR  -->

    <div id="content" class="main-content">
        <div class="">

            <div class="container">


                <form runat="server">
                    <%--BEING INSERT RIDE CATEGORY --%>
                    <br/>
                    <br/>
                    <div class="col-lg-12 layout-spacing">
                        <div class="statbox widget box box-shadow">
                            
                            <br />
                            <div class="widget-header">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                        <h4>THEMEPARK - RIDE DETAILS</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="">

                                <div class="row">
                                    <div class="col-lg-6 col-12 mx-auto">

                                        <div class="form-group mb-4">
                                            <%--<input type="email" class="form-control" id="rEmail" placeholder="Email address *">--%>
                                            <label for="fullName">Ride Category</label>
                                            <asp:DropDownList ID="ddlridecategory" runat="server" class="form-control  basic" DataSourceID="SqlDataSource1" DataTextField="ddlridecategory" DataValueField="Ridecatid" AutoPostBack="True" OnSelectedIndexChanged="ddlridecategory_SelectedIndexChanged"></asp:DropDownList>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ride_category]"></asp:SqlDataSource>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="email" class="form-control" id="rEmail" placeholder="Email address *">--%>
                                            <label for="fullName">Select Themepark Ride Category</label>    
                                            <asp:DropDownList ID="ddl1" class="form-control  basic" runat="server" DataSourceID="SqlDataSource2" DataTextField="themercname" DataValueField="themercid" AutoPostBack="True">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [themerc]"></asp:SqlDataSource>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <label for="fullName">Themepark Ride Name</label>
                                            <asp:TextBox ID="txttname" runat="server" class="form-control" required="plese"></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rConfirmPassword" placeholder="Confirm Password *">--%>
                                            <div>
                                                <label for="fullName">Upload Ride Image</label>
                                            </div>
                                            <div class="custom-file">
                                                <%--<input type="file" class="custom-file-input" id="customFile">--%>
                                                <div>
                                                <asp:FileUpload ID="FileUpload1" class="custom-file-container__custom-file__custom-file-input" accept="image/*" runat="server" required="plese" />
<%--                                                <div id="FileUpload1" class="custom-file-container" data-upload-id="myFirstImage">--%>
    
</div>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <%--<input type="password" class="form-control" id="rPassword" placeholder="Password *">--%>
                                            <div>
                                                <label for="fullName">Theme Ride Descriptions</label>
                                            </div>
                                            <asp:TextBox ID="txtdescription" runat="server" class="form-control-file" TextMode="MultiLine" required="plese"></asp:TextBox>
                                        </div>
                                         <div class="form-group mb-4">
                                                <label for="exampleFormControlSelect1">
                                                Status
                                                </label>
                                              <asp:DropDownList ID="DropDownList3" runat="server" class="placeholder js-states form-control">
                                                  <asp:ListItem >Operational</asp:ListItem>
                                                  <asp:ListItem>Under Safety Check</asp:ListItem>
                                              </asp:DropDownList>
                                            </div> 
                                        <small id="emailHelp2" class="form-text text-muted">*Required Fields</small>

                                        <%--<button type="submit" class="btn btn-primary mt-3">Submit</button>--%>

                                        <asp:Button ID="Btn_theme" runat="server" class="btn btn-primary mt-3" Text="Submit" OnClick="Btn_theme_Click" />
                                        <br />
                                        <br/>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <%--END INSERT RIDE CATEGORY --%>

                    <%--BEING THEMEPARK TABLE--%>




                    <div id="citytable" class="col-lg-12 layout-spacing" style="left: 1px; top: 5px">
                        <div class="statbox widget box box-shadow">

                            <div class="widget-header">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12" style="left: -1px; top: 0px">
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Themepark.themerideid, Themepark.Ridecatid, Themepark.themercid, Themepark.ridename, Themepark.rideimg, Themepark.ridediscription, Themepark.status, Ride_category.Ridecatid AS Expr1, Ride_category.ddlridecategory, themerc.pic, themerc.themercname, themerc.themercid AS Expr2 FROM Themepark INNER JOIN themerc ON Themepark.themercid = themerc.themercid INNER JOIN Ride_category ON Themepark.Ridecatid = Ride_category.Ridecatid"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                    <HeaderTemplate>

                                        <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                                            <div class="">
                                                <table id="html5-extension" class="table table-hover non-hover" style="width: 100%">
                                                    <h4>Themepark Table</h4>
                                                    <thead>
                                                        <tr>
                                                            <th>Theme Id</th>
                                                            <th>Ride Category Name</th>
                                                            <th>Theme Category Name</th>
                                                            <th>Theme Ride Name</th>
                                                            <th>Ride Pic</th>
                                                            <th>Descriptions</th>
                                                            <th>status</th>

                                                            <th class="dt-no-sorting">Action</th>
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
                                            <td>
                                                <img src='../Themeparkridepic/<%#Eval("rideimg") %>' height="100" width="100" />
                                            </td>
                                            <td><%#Eval("ridediscription") %></td>
                                            <td><%#Eval("status") %></td>


                                           <td>
                                               <div class="btn-group">
                                                    <button type="button" class="btn btn-dark btn-sm">Action</button>
                                                    <button type="button" class="btn btn-dark btn-sm dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-down">
                                                            <polyline points="6 9 12 15 18 9"></polyline></svg>
                                                    </button>


                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference1">
                                                        <a class="dropdown-item" href="UpdateTheme.aspx?themerideid=<%#Eval("themerideid") %>">Update</a>
                                                        <a class="dropdown-item" href="DeleteTheme.aspx?themerideid=<%#Eval("themerideid") %>">Delete</a>

                                                        
                                                        <%-- <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>--%>
                                                    </div>
                                                </div>
                                            </td>
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

                    <%--END THEMEPARK TABLE--%>
                </form>
            </div>
        </div>
    </div>

    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>


    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL CUSTOM SCRIPTS -->
    <script src="assets/js/scrollspyNav.js"></script>
    <script>
        checkall('todoAll', 'todochkbox');
        $('[data-toggle="tooltip"]').tooltip()
    </script>
    <!-- END PAGE LEVEL CUSTOM SCRIPTS -->
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>


    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL CUSTOM SCRIPTS -->
    <script src="assets/js/scrollspyNav.js"></script>
    <script>
        checkall('todoAll', 'todochkbox');
        $('[data-toggle="tooltip"]').tooltip()
    </script>
    <!-- END PAGE LEVEL CUSTOM SCRIPTS -->
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>

    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>

    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <!-- BEGIN PAGE LEVEL CUSTOM SCRIPTS -->
    <script src="assets/js/scrollspyNav.js"></script>
    <script>
        checkall('todoAll', 'todochkbox');
        $('[data-toggle="tooltip"]').tooltip()
    </script>
    <!-- END PAGE LEVEL CUSTOM SCRIPTS -->














    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>

    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>


    <script>
        $(document).ready(function () {
            App.init();
        });
    </script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            App.init();
        });
    </script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!-- BEGIN PAGE LEVEL CUSTOM SCRIPTS -->
    <script src="plugins/table/datatable/datatables.js"></script>
    <!-- NOTE TO Use Copy CSV Excel PDF Print Options You Must Include These Files  -->
    <script src="plugins/table/datatable/button-ext/dataTables.buttons.min.js"></script>
    <script src="plugins/table/datatable/button-ext/jszip.min.js"></script>
    <script src="plugins/table/datatable/button-ext/buttons.html5.min.js"></script>
    <script src="plugins/table/datatable/button-ext/buttons.print.min.js"></script>
    <script>
        $('#html5-extension').DataTable({
            "dom": "<'dt--top-section'<'row'<'col-sm-12 col-md-6 d-flex justify-content-md-start justify-content-center'B><'col-sm-12 col-md-6 d-flex justify-content-md-end justify-content-center mt-md-0 mt-3'f>>>" +
                "<'table-responsive'tr>" +
                "<'dt--bottom-section d-sm-flex justify-content-sm-between text-center'<'dt--pages-count  mb-sm-0 mb-3'i><'dt--pagination'p>>",
            buttons: {
                buttons: [
                    { extend: 'copy', className: 'btn btn-sm' },
                    { extend: 'excel', className: 'btn btn-sm' },
                    { extend: 'print', className: 'btn btn-sm' }
                ]
            },
            "oLanguage": {
                "oPaginate": { "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>', "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>' },
                "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
                "sSearchPlaceholder": "Search...",
                "sLengthMenu": "Results :  MENU",
            },
            "stripeClasses": [],
            "lengthMenu": [7, 10, 20, 50],
            "pageLength": 7
        });
    </script>
    

</asp:Content>
