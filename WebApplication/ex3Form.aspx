<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex3Form.aspx.cs" Inherits="WebApplication.ex3Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 457px; width: 590px;">
            <asp:Button ID="backBtn" runat="server" OnClick="backBtn_Click" Text="Back" />
            <asp:Button ID="intBtn" runat="server" OnClick="intBtn_Click" Text="Interface" />
            <br />
            <br />
&nbsp;<asp:Label ID="titleText" runat="server" Font-Bold="True" Font-Names="ELEGANCE" Font-Size="XX-Large" Font-Underline="True" Text="Title"></asp:Label>
            <br />
            <br />
            <asp:Label ID="ObjTitle" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="Large" Text="Objectives:"></asp:Label>
            <br />
            <asp:TextBox ID="ObjectivesText" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Names="Aharoni" Height="123px" TextMode="MultiLine" Width="575px"> hello</asp:TextBox>
            <br />
            <br />
            <asp:Label ID="procedueTitle" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="Large" Text="Procedures:"></asp:Label>
            <br />
            <asp:TextBox ID="ProcedureText" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Names="Aharoni" Height="114px" TextMode="MultiLine" Width="578px"> hello</asp:TextBox>
        </div>
    </form>
</body>
</html>
