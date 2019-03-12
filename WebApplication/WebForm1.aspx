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
                                <asp:TreeNode Value="Def1" Text="This first experiment aims to familiarize the Arduino hardware and the 
                                    <br /> software environment to make it function. Arduino is a microcontroller 
                                    <br /> that allows different functionalities based on the uploaded code. In this 
                                    <br /> experiment, the student is introduced to the hardware and connecting the 
                                    <br /> circuit to the Arduino. Also, the student is introduced to the IDE 
                                    <br /> that compiles a C code to the Arduino. <br />
" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp2" Text="Experiment 2: Interfacing Arduino with Web Application" Target="Content">
                                <asp:TreeNode Value="Def1" Text="Experiment 2 will teach the student on how to interface the arduino with 
                                    <br /> the WebApp using UART. The WebApp will serve as an input that will make
                                    <br /> the arduino give a distinct output. <br />"
 Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp3" Text="Experiment 3: Sending Input from Arduino to Web Application" Target="Content">
                                <asp:TreeNode Value="Def1" Text="The third experiment focuses on how to display the sensor input from the 
                                    <br /> Arduino to the Web Application. This application helps the students learn 
                                    <br /> how to read from the Arduino using the Web Appli1cation. <br />" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Value="Exp4" Text="Experiment 4: Rock, Paper, Scissors Game" Target="Content">
                                <asp:TreeNode Value="Def4" Text="The fourth experiment is the integration of all the experiences <br />
                                    and learning of the previous experiments in the form of the Rock, <br /> Paper, Scissors Game. 
                                    With this application, the student is set <br /> to understand how to interface the Arduino and its control <br /> 
                                    features to the web application. <br />" Target="Content"></asp:TreeNode>
                            </asp:TreeNode>

                        </asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Italic="True" Font-Names="Consolas" Font-Size="Small" ForeColor="#66FFCC" />
                    <ParentNodeStyle Font-Italic="True" />
                    <RootNodeStyle Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#009933" Height="20px" />
                </asp:TreeView>

            </p>
            <br />
            <asp:Button ID="adminpage_btn" runat="server" Font-Names="Century" OnClick="adminpage_btn_Click" Text="Enter as Admin" BackColor="#333333" BorderColor="#CCCCCC" ForeColor="#CCCCCC" />
        </div>
    </form>
</asp:Content>
