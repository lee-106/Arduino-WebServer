<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex4Interface.aspx.cs" Inherits="WebApplication.ex4Interface" %>

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
<body style="height: 23px">
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="backBtn_Clicked" />
            <br />
            <br />
        </div>
        <div style="width: 752px; margin-left: 120px">
            <asp:Panel ID="Panel1" runat="server" Width="240px">
                <asp:Label ID="player1_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Player 1"></asp:Label>
            </asp:Panel>
            <asp:Image ID="Image1" runat="server" Height="147px" Width="155px" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="p1_choices" runat="server">
                <asp:ListItem>Rock</asp:ListItem>
                <asp:ListItem>Paper</asp:ListItem>
                <asp:ListItem>Scissors</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="player2_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Player 2"></asp:Label>
                <br />
                <asp:Image ID="p2_choice_sel" runat="server" Height="147px" Width="155px" />
                <br />
                <asp:RadioButtonList ID="p1_choices0" runat="server">
                    <asp:ListItem>Rock</asp:ListItem>
                    <asp:ListItem>Paper</asp:ListItem>
                    <asp:ListItem>Scissors</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel3" runat="server">
            <asp:Label ID="Label1" runat="server" Text="SCORE:" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Text="0:0"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
