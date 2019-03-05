<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage1.master" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication.WebForm2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div style="margin-left: 120px">
            <asp:DropDownList ID="expddlist" runat="server" DataSourceID="DDLDataSource" DataTextField="Title" DataValueField="Number" OnSelectedIndexChanged="expddlist_SelectedIndexChanged" AutoPostBack="True" ForeColor="Aqua" align="center" Height="30px" Width="400px" BackColor="Black" Font-Italic="True" Font-Names="Bell MT" Font-Size="X-Large" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="DDLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [Number], [Title] FROM [titleTable]"></asp:SqlDataSource>
        </div>
        <p>

            <asp:GridView ID="ObjGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ViewStateMode="Enabled" 
                Width="600" ForeColor="#FFFFFF" GridLines="None" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="objective" HeaderText="Objectives:" SortExpression="objective" />
                </Columns>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#99FF99" Height="20px" />
                <RowStyle  ForeColor="#FFCCFF" Height="15px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [objective] FROM [objTable] WHERE ([number] = @number)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="expddlist" Name="number" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="ProcedureGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" 
                Width="598px" ForeColor="#FFFFFF" GridLines="None" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="in_number" HeaderText="No." ItemStyle-Width="1%" SortExpression="in_number" />
                    <asp:BoundField DataField="instructions" HeaderText="Procedures: " ItemStyle-Width="30%" SortExpression="instructions" />
                </Columns>
                <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="#99FF99" HorizontalAlign="Left"/>
                <RowStyle  ForeColor="#FFCCFF" Height="20px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myWebDBConnectionString %>" SelectCommand="SELECT [in_number], [instructions] FROM [proctable] WHERE ([number] = @number)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="expddlist" Name="number" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
             <br />
             <br />
        </p>

        <p>

            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="Large" ForeColor="White" Text="Adding Objectives and Procedures on Experiment: "></asp:Label>

        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Objective: " Font-Bold="True" Font-Italic="True" Font-Names="Century"></asp:Label>
           
            <asp:TextBox ID="objtext" runat="server" Width="179px"></asp:TextBox>
        </p>
        <p>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Procedure: " Font-Bold="True" Font-Italic="True" Font-Names="Century"></asp:Label>
            <asp:TextBox ID="procntxt" runat="server" Width="18px"></asp:TextBox>
            <asp:TextBox ID="proctext" runat="server" Width="147px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" BackColor="#333333" BorderColor="#CCCCCC" Font-Size="Small" ForeColor="#CCCCCC" Width="75px" />
            <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" Width="75px" />

            <asp:Button ID="Button3" runat="server" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" OnClick="Button3_Click1" Text="Back" Width="52px" />

            </p>
        <p>
            &nbsp;</p>
    </form>
</asp:Content>