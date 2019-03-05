<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeBehind="Interface2.aspx.cs" Inherits="WebApplication.Interface2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <p>

        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large" Text="Arduino Intensity Controller" ForeColor="#999966"></asp:Label>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Connect to Arduino: " Font-Size="Large" ForeColor="#666633" Font-Names="Century Gothic"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Port: " Font-Names="Castellar" Font-Size="Medium" ForeColor="#CCCCCC"></asp:Label>
        <asp:TextBox ID="Port_TB" runat="server" BackColor="#003300" BorderColor="#FFCC99" Font-Names="Castellar" ForeColor="White" Width="162px"></asp:TextBox>
        <br />
        <asp:Button ID="Connect_Btn" runat="server" OnClick="Connect_Btn_Click" Text="Connect" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" Font-Size="Small" ForeColor="#CCCCCC" />
    </p>

    <p>
        <asp:Label ID="update_Lbl" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Small" Font-Underline="True" ForeColor="#CCCCCC"></asp:Label>
        <br />
    </p>
    
    <asp:Panel ID="Panel1" runat="server" Width="243px">
                <asp:Label ID="Intensity_label" runat="server" Font-Names="Century Gothic" Font-Overline="False" Font-Size="Large" Text="Intensity (% PWM)" Font-Bold="True" ForeColor="#666666"></asp:Label>
                <asp:TextBox ID="Intensity_TB" runat="server" BackColor="#003300" BorderColor="#FFCC99" OnTextChanged="TextBox1_TextChanged" Width="147px" ForeColor="White">0</asp:TextBox>
                <br />
                <asp:Button ID="EnterIntensity_Btn" runat="server" OnClick="EnterIntensity_Btn_Click" Text="Enter" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" ForeColor="#CCCCCC" Width="71px" Font-Size="Small" />
            </asp:Panel>
    <p>
        <br /> <br />
        <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" Font-Size="Small" ForeColor="#CCCCCC" Text="Back" Width="70px" OnClick="Button1_Click" />

    </p>
    </form>
</asp:Content>
