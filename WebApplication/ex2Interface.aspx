<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex2Interface.aspx.cs" Inherits="WebApplication.ex2Interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="backBtn_Clicked" />
            <br />
        <div style="width: 752px; margin-left: 120px; height: 283px;">
            <asp:Panel ID="Panel1" runat="server" Width="216px">
                <asp:Label ID="Intensity_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Intensity (% PWM)"></asp:Label>
            </asp:Panel>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="IntensityText" runat="server" OnTextChanged="TextBox1_TextChanged" BackColor="#F8F8F8" BorderColor="#CCCCCC">0</asp:TextBox>
           <br />
        </div>
            <br />
        </div>
    </form>
</body>
</html>
