<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="expddlist" runat="server" DataSourceID="DDLDataSource" DataTextField="Title" DataValueField="Number" OnSelectedIndexChanged="expddlist_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="DDLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [Number], [Title] FROM [titleTable]"></asp:SqlDataSource>
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" />
            <asp:GridView ID="ObjGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ViewStateMode="Enabled">
                <Columns>
                    <asp:BoundField DataField="objective" HeaderText="Objectives:" SortExpression="objective" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [objective] FROM [objTable] WHERE ([number] = @number)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="expddlist" Name="number" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="ProcedureGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="in_number" HeaderText="No." SortExpression="in_number" />
                    <asp:BoundField DataField="instructions" HeaderText="Procedure" SortExpression="instructions" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [in_number], [instructions] FROM [proctable] WHERE ([number] = @number)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="expddlist" Name="number" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Objective:"></asp:Label>
            <asp:TextBox ID="objtext" runat="server" Width="179px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Procedure:"></asp:Label>
            <asp:TextBox ID="procntxt" runat="server" Width="18px"></asp:TextBox>
            <asp:TextBox ID="proctext" runat="server" Width="147px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            </p>
    </form>
</body>
</html>
