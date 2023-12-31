﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admincalendar.aspx.cs" Inherits="Amsement_park1.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLE -->
    <link href="plugins/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="plugins/fullcalendar/custom-fullcalendar.advance.css" rel="stylesheet" type="text/css" />
    <link href="plugins/flatpickr/flatpickr.css" rel="stylesheet" type="text/css">
    <link href="plugins/flatpickr/custom-flatpickr.css" rel="stylesheet" type="text/css">
    <link href="assets/css/forms/theme-checkbox-radio.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLE -->
    <style>
        .widget {     margin-bottom: 10px;
    border: none;
    box-shadow: rgb(145 158 171 / 24%) 0px 0px 2px 0px, rgb(145 158 171 / 24%) 0px 16px 32px -4px; }
        .widget-content-area { border-radius: 6px; }
        .daterangepicker.dropdown-menu {
            z-index: 1059;
        }
    </style>

    <!--  BEGIN NAVBAR  -->
    <div class="sub-header-container">
        <header class="header navbar navbar-expand-sm">
            <a href="javascript:void(0);" class="sidebarCollapse" data-placement="bottom"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></a>

            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">

                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>Calendar</span></li>
                            </ol>
                        </nav>

                    </div>
                </li>
            </ul>
        </header>
    </div>
    <!--  END NAVBAR  -->

    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container" id="container">

        <div class="overlay"></div>
        <div class="search-overlay"></div>

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="row layout-top-spacing" id="cancel-row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="statbox widget box box-shadow">
                            <div class="widget-content widget-content-area">
                                <div class="calendar-upper-section">
                                    <div class="row">
                                        <div class="col-md-8 col-12">
                                            <div class="labels">
                                                <p class="label label-primary">Work</p>
                                                <p class="label label-warning">Travel</p>
                                                <p class="label label-success">Personal</p>
                                                <p class="label label-danger">Important</p>
                                            </div>
                                        </div>                                                
                                        <div class="col-md-4 col-12">
                                            <form action="javascript:void(0);" class="form-horizontal mt-md-0 mt-3 text-md-right text-center">
                                                <button id="myBtn" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar mr-2"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg> Add Event</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>

                    <!-- The Modal -->
                    <div id="addEventsModal" class="modal animated fadeIn">

                        <div class="modal-dialog modal-dialog-centered">
                            
                            <!-- Modal content -->
                            <div class="modal-content">

                                <div class="modal-body">

                                    <span class="close">&times;</span>

                                    <div class="add-edit-event-box">
                                        <div class="add-edit-event-content">
                                            <h5 class="add-event-title modal-title">Add Events</h5>
                                            <h5 class="edit-event-title modal-title">Edit Events</h5>

                                            <form class="">

                                                <div class="row">

                                                    <div class="col-md-12">
                                                        <label for="start-date" class="">Event Title:</label>
                                                        <div class="d-flex event-title">
                                                            <input id="write-e" type="text" placeholder="Enter Title" class="form-control" name="task">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6 col-sm-6 col-12">
                                                        <div class="form-group start-date">
                                                            <label for="start-date" class="">From:</label>
                                                            <div class="d-flex">
                                                                <input id="start-date" placeholder="Start Date" class="form-control" type="text">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-sm-6 col-12">
                                                        <div class="form-group end-date">
                                                            <label for="end-date" class="">To:</label>
                                                            <div class="d-flex">
                                                                <input id="end-date" placeholder="End Date" type="text" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <label for="start-date" class="">Event Description:</label>
                                                        <div class="d-flex event-description">
                                                            <textarea id="taskdescription" placeholder="Enter Description" rows="3" class="form-control" name="taskdescription"></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="event-badge">
                                                            <p class="">Badge:</p>

                                                            <div class="d-sm-flex d-block">
                                                                <div class="n-chk">
                                                                    <label class="new-control new-radio radio-primary">
                                                                      <input type="radio" class="new-control-input" name="marker" value="bg-primary">
                                                                      <span class="new-control-indicator"></span>Work
                                                                    </label>
                                                                </div>

                                                                <div class="n-chk">
                                                                    <label class="new-control new-radio radio-warning">
                                                                      <input type="radio" class="new-control-input" name="marker" value="bg-warning">
                                                                      <span class="new-control-indicator"></span>Travel
                                                                    </label>
                                                                </div>

                                                                <div class="n-chk">
                                                                    <label class="new-control new-radio radio-success">
                                                                      <input type="radio" class="new-control-input" name="marker" value="bg-success">
                                                                      <span class="new-control-indicator"></span>Personal
                                                                    </label>
                                                                </div>

                                                                <div class="n-chk">
                                                                    <label class="new-control new-radio radio-danger">
                                                                      <input type="radio" class="new-control-input" name="marker" value="bg-danger">
                                                                      <span class="new-control-indicator"></span>Important
                                                                    </label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>

                                </div>

                                <div class="modal-footer">
                                    <button id="discard" class="btn" data-dismiss="modal">Discard</button>
                                    <button id="add-e" class="btn">Add Task</button>
                                    <button id="edit-event" class="btn">Save</button>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>
            <div class="footer-wrapper">
                <div class="footer-section f-section-1">
                    <p class="">Copyright © 2021 <a target="_blank" href="https://designreset.com/">DesignReset</a>, All rights reserved.</p>
                </div>
                <div class="footer-section f-section-2">
                    <p class="">Coded with <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></p>
                </div>
            </div>
        </div>
        <!--  END CONTENT AREA  -->
    </div>
    <!-- END MAIN CONTAINER -->

    <!-- START GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>

    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>
    
    <script>
        $(document).ready(function() {
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

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="plugins/fullcalendar/moment.min.js"></script>
    <script src="plugins/flatpickr/flatpickr.js"></script>
    <script src="plugins/fullcalendar/fullcalendar.min.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->

    <!--  BEGIN CUSTOM SCRIPTS FILE  -->
    <script src="plugins/fullcalendar/custom-fullcalendar.advance.js"></script>
    <!--  END CUSTOM SCRIPTS FILE  -->

</asp:Content>
