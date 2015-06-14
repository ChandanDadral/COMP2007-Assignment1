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
        <h1>Game Calculator</h1>
    </div>
    <div class="container">
        <div class="row info-panel">
            <div class="jumbotron col-lg-3 well">
                <h3>Game 1</h3>

                <div>
                    <asp:Label ID="resultLabel1" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" CssClass="text-danger" runat="server" ErrorMessage="Please Select Result"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel1" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPScored1" CssClass="text-danger" runat="server" ErrorMessage="Points Scored is required"></asp:RequiredFieldValidator>
                </div>
                <div>

                    <asp:Label ID="pointAllowedLabel1" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel1" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpec1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- GAme Section 2-->
             <div class="jumbotron col-lg-3 well">
                <h3>Game 2</h3>

                <div>
                    <asp:Label ID="resultLabel2" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList2" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>
                    <asp:Label ID="pointScoredLabel2" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel2" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel2" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            
            <!--Game Section3-->
             <div class="jumbotron col-lg-3 well">
                <h3>Game 3</h3>

                <div>
                    <asp:Label ID="resultLabel3" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList3" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel3" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel3" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel3" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <!--GAme Section 4-->
             <div class="jumbotron col-lg-3 well">
                <h3>Game 4</h3>

                <div>
                    <asp:Label ID="resultLabel4" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList4" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel4" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel4" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel4" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
             <div class="text-center">
                 <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn-lg btn-primary" OnClick="btnSubmit_Click"/>

            </div>
        </div> <!--Row Ends HEre-->
    </div><!-- Container Ends HEre -->

    <div class="container well center-block" id="summaryContainer" runat="server">
        <h2>Summary:</h2>
        <div>
            <label>Number of Games won: </label>
            <asp:Label ID="lblGameWon" runat="server"></asp:Label>
        </div>
        <div>
            <label>Number of Games Lost: </label>
            <asp:Label ID="lblGameLost" runat="server"></asp:Label>
        </div>
        <div>
            <label>Winning %: </label>
            <asp:Label ID="lblWinningP" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Points Scored: </label>
            <asp:Label ID="lblTotalPointS" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Point Allowed: </label>
            <asp:Label ID="lblTotalPointsA" runat="server"></asp:Label>
        </div>
        <div>
            <label>Differential of Points: </label>
            <asp:Label ID="lblDifferentP" runat="server"></asp:Label>
        </div>
        <div>
            <label>Total Spectators: </label>
            <asp:Label ID="lblTotalS" runat="server"></asp:Label>
        </div>
        <div>
            <label>Average Spectators: </label>
            <asp:Label ID="lblAverageS" runat="server"></asp:Label>
        </div>
    </div>



</asp:Content>
