<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage1.master" CodeBehind="ex4Interface.aspx.cs" Inherits="WebApplication.ex4Interface" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
    <style>
        .inlineBlock {
   display: inline-block;
 }
    </style>
        </head>
            <form id="form1" runat="server">
    
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="backBtn_Clicked" />
            <br />
            <br />
        
        
            
            <h1>Arduino Intensity Controller</h1>
            <h2>Connect to Arduino</h2>
            <p>
                Port1: <asp:TextBox ID="Port_TB1" runat="server" ></asp:TextBox>
                <br />
                Port2: <asp:TextBox ID="Port_TB2" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="update_Lbl" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Connect_Btn" runat="server" OnClick="Connect_Btn_Click" Text="Connect" />
                <asp:Button ID="evalBtn" runat="server" OnClick="Evaluate" Text="Evaluate" />
            </p>
            &nbsp;<br />
            <asp:Panel ID="Panel3" runat="server">
                <asp:Label ID="Label1" runat="server" Text="SCORE:" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large"></asp:Label>
                <asp:Label ID="score1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Text="0"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Text=":"></asp:Label>
                <asp:Label ID="score2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Text="0"></asp:Label>
            </asp:Panel></br>
            <asp:Panel ID="mainPanel" runat="server" >
                <asp:Panel ID="Panel1" runat="server" Width="240px" CssClass="inlineblock">
                    <asp:Label ID="player1_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Player 1"></asp:Label>
                    <br>
                    <asp:Label ID="choiceText1" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Rock"></asp:Label>
                    <br>
                    <asp:Label ID="statusText1" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Status 1"></asp:Label>
                    </br>
                    <asp:Image ID="Image1" runat="server" Height="147px" Width="155px" />
               
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Width="240px" CssClass="inlineblock">
                
                    <asp:Label ID="player2_label" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Player 2"></asp:Label>
                    
                    <br />
                    <asp:Label ID="choiceText2" runat="server" Font-Names="Aharoni" Font-Overline="False" Font-Size="X-Large" Text="Paper"></asp:Label>
                    <br>
                    
                    <asp:Image ID="Image2" runat="server" Height="147px" Width="155px" />
                </asp:Panel>
     </asp:Panel>
        
  


            </form>
  


</asp:Content>

