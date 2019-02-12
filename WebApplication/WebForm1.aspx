<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="framework.css" 
type="text/css" rel="stylesheet">
    <title></title>
</head>
<body style="height: 218px; width: 508px">
    <form id="form1" runat="server">
        <div style="height: 500px">
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFFF" BorderColor="Red" BorderStyle="Double" Text="Experiment list for Arduino:" Width="500px"></asp:Label>
            <br />
            <asp:Button ID="ex1Btn" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" OnClick="ex1Btn_Click" Text="Experiment 1" Width="500px" />
            <asp:Button ID="ex2Btn" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" OnClick="ex2Btn_Click" Text="Experiment 2" Width="500px" />
            <asp:Button ID="ex3Btn" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" OnClick="ex3Btn_Click" Text="Experiment 3" Width="500px" />
            <asp:Button ID="ex4Btn" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" OnClick="ex4Btn_Click" Text="Experiment 4" Width="500px" />
        </div>
    </form>
</body>
</html>
