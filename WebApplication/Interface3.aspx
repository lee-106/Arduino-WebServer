<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeBehind="Interface3.aspx.cs" Inherits="WebApplication.Interface3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div style="height: 391px">
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClick="backBtn_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="COM"></asp:Label>
                   
                    &nbsp;<asp:TextBox ID="comBox" runat="server" Width="16px">3</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="connectBtn" runat="server" OnClick="Button1_Click" style="height: 26px; margin-left: 0px" Text="Connect" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" Text="Humidity:"></asp:Label>
                    <asp:Label ID="humidityText" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large"></asp:Label>
                    &nbsp;<br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" Text="Temperature:"></asp:Label>
                    <asp:Label ID="tempText" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Button ID="clearBtn" runat="server" Height="26px" OnClick="clearBtn_Click" Text="Clear" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="saveBtn" runat="server" OnClick="saveBtn_Click" Text="Save" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="messageText" runat="server" ForeColor="Red" Text="Press Connect when COM PORT is Ready"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="fetchBtn" runat="server" Height="25px" OnClick="enterBtn_Click" style="margin-bottom: 10px" Text="Fetch" Width="130px" />
                    <br />
                    <asp:Table ID="dTable" runat="server">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">No.</asp:TableCell>
                            <asp:TableCell runat="server">Temperature</asp:TableCell>
                            <asp:TableCell runat="server">Humidity</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>

</asp:Content>
