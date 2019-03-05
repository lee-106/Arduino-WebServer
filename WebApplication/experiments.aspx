<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeBehind="experiments.aspx.cs" Inherits="WebApplication.experiments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <p>

        <asp:Label ID="exp_number" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="X-Large" Text="Experiment: "></asp:Label>
    </p>
        <p>

            <asp:GridView ID="obj_gv" runat="server" GridLines="None">
            </asp:GridView>

        </p>
        <p>

            <asp:GridView ID="proc_gv" runat="server" GridLines="None">
            </asp:GridView>

        </p>
    </form>
</asp:Content>
