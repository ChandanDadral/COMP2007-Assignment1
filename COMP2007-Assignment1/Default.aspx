<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/GameCalculator.Master" Inherits="COMP2007_Assignment1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator Application</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="container">
        <h1>Game Calculator</h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="jumbotron col-lg-3 well">
                <h3>Game 1</h3>

                <div>
                    <asp:Label ID="resultLabel1" runat="server" Text="Label">Result 1:</asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel1" runat="server">Points Scored:</asp:Label>
                    <asp:TextBox ID="txtPScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>

                    <asp:Label ID="pointAllowedLabel1" runat="server">Points Allowed:</asp:Label>
                    <asp:TextBox ID="txtPAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel1" runat="server">Spectator:</asp:Label>
                    <asp:TextBox ID="txtSpec1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

           
        </div> <!--Row Ends HEre-->
    </div><!-- Container Ends HEre -->





</asp:Content>
