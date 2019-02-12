<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex3Interface.aspx.cs" Inherits="WebApplication.ex3Interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 339px">
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClick="backBtn_Click1" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" Text="Humidity:"></asp:Label>
            <asp:Label ID="humidityText" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" Text="Temperature:"></asp:Label>
            <asp:Label ID="tempText" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:Button ID="clearBtn" runat="server" Text="Clear" OnClick="clearBtn_Click" />
            <asp:Button ID="enterBtn" runat="server" OnClick="enterBtn_Click" Text="Save" />
            <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0" Height="34px" Width="349px" HorizontalAlign="Center">
                <asp:TableRow runat="server" Font-Bold="True" Font-Names="Aharoni" HorizontalAlign="Center" VerticalAlign="Top">
                    <asp:TableCell runat="server">No.</asp:TableCell>
                    <asp:TableCell runat="server">Humidity</asp:TableCell>
                    <asp:TableCell runat="server">Temperature</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
