<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Amsement_park1.User.WebForm3" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:TextBox ID="txtdate" runat="server" ></asp:TextBox>
    <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtdate" ID="TextBox1_CalendarExtender"></asp:CalendarExtender>
        <br/>
        <asp:Button ID="btnsub" runat="server" Text="Button" type="submit"   />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </form>
</asp:Content>
