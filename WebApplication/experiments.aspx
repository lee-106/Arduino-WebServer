<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeBehind="experiments.aspx.cs" Inherits="WebApplication.experiments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <p>

        <asp:Label ID="exp_number" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="X-Large" Text="Experiment: " ForeColor="#CCFFFF"></asp:Label>
    </p>
        <p>

            <asp:GridView ID="obj_gv" runat="server" GridLines="None" OnRowDataBound="obj_gv_RowDataBound" Width="600px">
                <HeaderStyle ForeColor="#CCFF99" />
                <RowStyle ForeColor="#FFCC99" />
            </asp:GridView>

        </p>
        <p>

            <asp:Image ID="exp2_image" runat="server" ImageUrl="~/exp2.png" Width="35px" Visible="False" />

            <asp:Image ID="exp3_image" runat="server" Width="35px" ImageUrl="~/exp3.jpg" Visible="False"  />

            <asp:Image ID="exp1_image" runat="server" ImageUrl="~/exp1.PNG" Visible="False" />

            <asp:Image ID="exp4_image" runat="server" ImageUrl="~/exp4.png" Visible="False" />

            <asp:Image ID="test_image" runat="server" Visible="False" />

        </p>
        <p>

            <asp:GridView ID="proc_gv" runat="server" GridLines="None" Width="600px" OnRowDataBound="proc_gv_RowDataBound">
                <HeaderStyle ForeColor="#999966" />
                <RowStyle ForeColor="#FFFFCC" />
            </asp:GridView>

        </p>
        <p>

            <asp:GridView ID="mat_gv" runat="server" Width="600px" OnRowDataBound="mat_gv_RowDataBound" GridLines="None">
                <HeaderStyle ForeColor="#999966" />
                <RowStyle ForeColor="#FFFFCC" />
            </asp:GridView>

        </p>
        <p>

            <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" OnClick="Button1_Click" Text="Proceed" />
            <asp:Button ID="Button2" runat="server" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" OnClick="Button2_Click" Text="Back" Width="55px" />

        </p>
    </form>
</asp:Content>
