<%@ Page Language="C#"  UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/GameCalculator.Master" Inherits="COMP2007_Assignment1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator Application</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->

   
   
        <div class="jumbotron col-lg-12 ">
        <h1>Game Calculator</h1>

            </div>
   
    
        <div class="row info-panel">
            <div class="jumbotron col-lg-3 well">
                <h3>Game 1</h3>

                <div>
                    <asp:Label ID="resultLabel1" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>

                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult1" ControlToValidate="RadioButtonList1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Select Result"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel1" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored1" ControlToValidate="txtPScored1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored1" ControlToValidate="txtPScored1" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Scores should be between 0-10"></asp:RangeValidator>
                </div>
                <div>

                    <asp:Label ID="pointAllowedLabel1" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed1" ControlToValidate="txtPAllowed1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorAllowed1" ControlToValidate="txtPAllowed1" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Allowed should be between 0-10"></asp:RangeValidator>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel1" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpec1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                <div>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator1" ControlToValidate="txtSpec1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
               <asp:RangeValidator ID="RangeValidatorSpectator1" ControlToValidate="txtSpec1" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" runat="server" type="Integer" ErrorMessage="Spectator should be between 0-10"></asp:RangeValidator>
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
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult2" ControlToValidate="RadioButtonList2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Result"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="pointScoredLabel2" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored2" ControlToValidate="txtPScored2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorScored2" ControlToValidate="txtPScored2" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Scores should be between 0-10"></asp:RangeValidator>
                     </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel2" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed2" ControlToValidate="txtPAllowed2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed2" ControlToValidate="txtPAllowed2" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Allowed should be between 0-10"></asp:RangeValidator>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel2" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator2" ControlToValidate="txtSpectator2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator2" ControlToValidate="txtSpectator2" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Spectator should be between 0-10"></asp:RangeValidator>
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
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult3" ControlToValidate="RadioButtonList3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Result"></asp:RequiredFieldValidator>
                    
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel3" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored3" ControlToValidate="txtPScored3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored3" ControlToValidate="txtPScored3" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Scores should be between 0-10"></asp:RangeValidator>
                </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel3" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed3" ControlToValidate="txtPAllowed3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed3" ControlToValidate="txtPAllowed3" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Allowed should be between 0-10"></asp:RangeValidator>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel3" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator3" ControlToValidate="txtSpectator3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectators"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator3" ControlToValidate="txtSpectator3" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Spectator should be between 0-10"></asp:RangeValidator>
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
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult4" ControlToValidate="RadioButtonList4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Results"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="pointsScoredLabel4" runat="server"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="txtPScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored4" ControlToValidate="txtPScored4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored4" ControlToValidate="txtPScored4" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Scores should be between 0-10"></asp:RangeValidator>
                </div>
                <div>

                    <asp:Label ID="pointsAllowedLabel4" runat="server"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="txtPAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed4" ControlToValidate="txtPAllowed4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed4" ControlToValidate="txtPAllowed4" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Allowes should be between 0-10"></asp:RangeValidator>
                </div>
                <div>
                    <asp:Label ID="spectatorLabel4" runat="server"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="txtSpectator4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator4" ControlToValidate="txtSpectator4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator4" ControlToValidate="txtSpectator4" CssClass="text-danger" Display="Dynamic" MaximumValue="10" MinimumValue="0" type="Integer" runat="server" ErrorMessage="Spectator should be between 0-10"></asp:RangeValidator>
                </div>
            </div>
            
        </div> <!--Row Ends HEre-->
   <!-- Container Ends HEre -->
            <div class="text-center">
                 <asp:Button ID="Button1" runat="server" Text="Summary" CssClass="btn-lg btn-primary" OnClick="btnSubmit_Click"/>

            </div>



    <div class="container well center-block text-center" id="summaryContainer" runat="server">
        
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
