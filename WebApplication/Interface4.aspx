<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeBehind="Interface4.aspx.cs" Inherits="WebApplication.Interface4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
  box-sizing: border-box;
}

.row {
  display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
  flex: 33.33%;
  padding: 5px;
}
    </style>
    <form id="form1" runat="server">
        <p>

            <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="X-Large" style="text-align: center" Text="Rock, Paper, Scissors!"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </p>
        <p>

        &nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Large" Text="Connect COM ports first:"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Port 1:" Font-Names="Century Gothic" Font-Size="Small"></asp:Label>
            <asp:TextBox ID="port1_tb" runat="server" BackColor="#003300" BorderColor="#FFCC99"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Font-Names="Century Gothic" Font-Size="Small" Text="Port 2:"></asp:Label>

            <asp:TextBox ID="port2_tb" runat="server" BackColor="#003300" BorderColor="#FFCC99"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Connect" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" Font-Size="Small" ForeColor="#CCCCCC" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="upd_lbl" runat="server" Text="Variable Label" Font-Names="Century Gothic" Font-Size="Small"></asp:Label>

        </p>
    <p>

        <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" Text="Player 1:"></asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Names="Comic Sans MS" Font-Size="Medium" Text="Player 2:"></asp:Label>

    </p>
        <div class="row">
            <div class="column">
                 <asp:Image ID="p1_image" runat="server" Height="40px" Width="42px" ImageUrl="~/pepe.jpg" />
            </div>
            <div class="column">
                <asp:Image ID="p2_image" runat="server" Height="38px" Width="40px" ImageUrl="~/pepe.jpg" />
            </div>
        </div>
        <p>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Century Gothic" Font-Size="X-Large" Text="Score 0 : 0"></asp:Label>

        </p>
        <p>

            <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" Font-Size="Small" ForeColor="#CCCCCC" OnClick="Button1_Click" Text="Back" Width="59px" />

        </p>
    </form>
</asp:Content>
