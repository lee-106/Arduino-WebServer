<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex2Interface.aspx.cs" Inherits="WebApplication.ex2Interface" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 397px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="backBtn_Clicked" />
            <br />
        <div style="width: 752px; margin-left: 120px; height: 351px;">
            <h1>Arduino Intensity Controller</h1>
            <h2>Connect to Arduino</h2>
            <p>
                Port:<asp:TextBox ID="Port_TB" runat="server" OnTextChanged="Port_TB_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Connect_Btn" runat="server" OnClick="Connect_Btn_Click" Text="Connect" />
            </p>
            <p>
                <asp:Label ID="update_Lbl" runat="server"></asp:Label>
            </p>
            <asp:Panel ID="Panel1" runat="server" Width="243px">
                <asp:Label ID="Intensity_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Intensity (% PWM)"></asp:Label>
                <asp:TextBox ID="Intensity_TB" runat="server" BackColor="#F8F8F8" BorderColor="#CCCCCC" OnTextChanged="TextBox1_TextChanged">0</asp:TextBox>
                <br />
                <asp:Button ID="EnterIntensity_Btn" runat="server" OnClick="EnterIntensity_Btn_Click" Text="Enter" />
            </asp:Panel>
            &nbsp;<br />
        </div>
            <br />
        </div>
    </form>
</body>
</html>
