<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCity.aspx.cs" Inherits="Amsement_park1.Admin.Delete" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button" runat="server" Text="Click Me" OnClick="Button_Click" />
        <br />
                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server"
                        TargetControlID="Button"
                        ConfirmText="Are you sure you want to click the Button?" />
    </form>
</body>
</html>
