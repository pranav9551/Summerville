<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm13.aspx.cs" Inherits="Amsement_park1.User.WebForm13" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:TextBox ID="txtdate" runat="server" OnTextChanged="txtdate_TextChanged"></asp:TextBox>
        <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="txtdate" ID="txtdate_CalendarExtender"  Format="dd-MM-yyyy"></asp:CalendarExtender>
        <br/>
        <asp:Button ID="btnsub" runat="server" Text="Button" type="submit" OnClick="btnsub_Click"   />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </form>
</body>
</html>
