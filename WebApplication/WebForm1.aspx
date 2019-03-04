<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage1.master" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div style="height: 500px">
            <br />
            <p>

                <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                    <Nodes>
                        <asp:TreeNode Value="ListDef" Text="Arduino Experiments List: " Target="Content" Expanded="True">
                            <asp:TreeNode Value="Exp1" Text="Experiment 1: Familiarization with Arduino" Target="Content">
                                <asp:TreeNode Value="Def1" Text="Experiment 1 is yadayada yada yada" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp2" Text="Experiment 2: Interfacing Arduino with Web Application" Target="Content">
                                <asp:TreeNode Value="Def1" Text="Experiment 2 is yadayada yada yada" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp3" Text="Experiment 3: Sending Input from Arduino to Web Application" Target="Content">
                                <asp:TreeNode Value="Def1" Text="Experiment 3 is yadayada yada yada" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp4" Text="Experiment 4: Rock, Paper, Scissors Game" Target="Content">
                                <asp:TreeNode Value="Def4" Text="The fourth experiment is the integration of all the experiences <br />
                                    and learning of the previous experiments in the form of the Rock, <br /> Paper, Scissors Game. 
                                    With this application, the student is set <br /> to understand how to interface the Arduino and its control <br /> 
                                    features to the web application." Target="Content"></asp:TreeNode>
                            </asp:TreeNode>

                        </asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Italic="True" Font-Names="Courier New" Font-Size="Small" ForeColor="#66FFCC" />
                    <ParentNodeStyle Font-Italic="True" />
                    <RootNodeStyle Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#009933" Height="20px" />
                </asp:TreeView>

            </p>
            <br />
            <asp:Button ID="adminpage_btn" runat="server" Font-Names="Century" OnClick="adminpage_btn_Click" Text="Enter as Admin" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" />
        </div>
    </form>
</asp:Content>
