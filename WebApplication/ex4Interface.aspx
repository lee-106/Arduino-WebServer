<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage1.master" CodeBehind="ex4Interface.aspx.cs" Inherits="WebApplication.ex4Interface" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
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
        </head>
            <form id="form1" runat="server">
    
            <p>

            <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" style="text-align: center" Text="Rock, Paper, Scissors!"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </p>
                
            
            <p>
                <asp:Label ID="Label5" runat="server" Font-Names="Century Gothic" Font-Size="Small" Text="Port 1:"></asp:Label>
                <asp:TextBox ID="Port_TB1" runat="server" BackColor="#003300" BorderColor="#FFCC99" ></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Names="Century Gothic" Font-Size="Small" Text="Port 2:"></asp:Label>
                <asp:TextBox ID="Port_TB2" runat="server" BackColor="#003300" BorderColor="#FFCC99"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="update_Lbl" runat="server" Font-Names="Century Gothic" Font-Size="Medium"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Connect_Btn" runat="server" OnClick="Connect_Btn_Click" Text="Connect" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" ForeColor="#CCCCCC" />
                <asp:Button ID="evalBtn" runat="server" OnClick="Evaluate" Text="Evaluate" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" ForeColor="#CCCCCC" />
            </p>
            &nbsp;<br />
            </br>
            <asp:Panel ID="mainPanel" runat="server" >
                <div class="row">
                    <div class="column">
                        <asp:Panel ID="Panel1" runat="server" Width="240px" CssClass="inlineblock">
                    <asp:Label ID="player1_label" runat="server" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Large" Text="Player 1:"></asp:Label>
                    <br>
                    <asp:Label ID="choiceText1" runat="server" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Large" Text="Rock"></asp:Label>
                    <br>
                    <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl="~/pepe.jpg" Width="155px" />
                
                                   
                </asp:Panel>
                    </div>
                    <div class="column">
                        <asp:Panel ID="Panel2" runat="server" Width="240px" CssClass="inlineblock">
                
                    <asp:Label ID="player2_label" runat="server" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Large" Text="Player 2:"></asp:Label>
                    
                    <br />
                    <asp:Label ID="choiceText2" runat="server" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Large" Text="Paper"></asp:Label>
                    <br />
                    
                    <asp:Image ID="Image2" runat="server" Height="147px" Width="155px" ImageUrl="~/pepe.jpg" />
                    </div>
                </div>
                               
                </asp:Panel>
                </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label1" runat="server" Text="SCORE:" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large"></asp:Label>
                <asp:Label ID="score1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Text="0"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Text=":"></asp:Label>
                <asp:Label ID="score2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Text="0"></asp:Label>
            </asp:Panel>
  
                <p>
                    
            <asp:Button ID="backBtn" runat="server" Text="Back" OnClientClick="backBtn_Clicked" BackColor="#333333" BorderColor="#CCCCCC" Font-Names="Century" Font-Size="Small" ForeColor="#CCCCCC" Width="57px" OnClick="backBtn_Click" />
                </p>

            </form>
  


</asp:Content>

