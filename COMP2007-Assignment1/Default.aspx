<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/GameCalculator.Master" Inherits="COMP2007_Assignment1.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator Application</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->

    <!--Section fo Carousel-->
    <section>

        <div class="carousel slide" id="gallery-carousel" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#gallery-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#gallery-carousel" data-slide-to="1"></li>
                <li data-target="#gallery-carousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <!--Active Image in Carausel-->
                <div class="item active">
                    <img src="Assets/images/99.jpg" alt="Slider image">
                    <div class="carousel-caption caption">Game Calculator </div>
                </div>
                <div class="item">
                    <img src="Assets/images/44.jpg" alt="Slider image">
                    <div class="carousel-caption h2">
                        All Fields are
                        <br />
                        Required
                    </div>
                </div>
                <div class="item">
                    <img src="Assets/images/00.jpg" alt="Slider image">
                    <div class="carousel-caption h2">
                        No ties, one team
                        <br />
                        shoud Win
                    </div>
                </div>
            </div>
            <!-- end carousel-inner -->
            <!--Navigation for Image-->
            <a href="#gallery-carousel" class="left carousel-control" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a href="#gallery-carousel" class="right carousel-control" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        <!-- end carousel -->
    </section>
    <!--Carausel Refered From Bootstrap Website-->

    <!--Games Starts here-->
    <div class="row info-panel main">
        <!--Main container that holds each game content-->
        <div class="jumbotron col-lg-3 well">
            <h3>Soccer         <i class="fa fa-futbol-o"></i></h3>
            <!--Results for game 1 and input is taken as a Win or Loss-->
            <div>
                <asp:Label ID="resultLabel1" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                    <asp:ListItem Value="1">Win</asp:ListItem>
                    <asp:ListItem Value="0">Loss</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult1" ControlToValidate="RadioButtonList1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Select Result"></asp:RequiredFieldValidator>
            </div>
            <!--Lable and text input for Points Scored also, Set require field and range validator-->
            <div>
                <asp:Label ID="pointsScoredLabel1" runat="server"><strong>Points Scored:</strong></asp:Label>
                <asp:TextBox ID="txtPScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <!--Range Validaor nad require Validor for the input-->
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored1" ControlToValidate="txtPScored1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorScored1" ControlToValidate="txtPScored1" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be be greater than 0"></asp:RangeValidator>
            </div>
            <!--Compare Validation it compares scores allowed with score scored they shouldn't be same-->
            <div>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Scored and Allowed Must be Different" CssClass="text-danger alert-danger" ControlToValidate="txtPScored1" ControlToCompare="txtPAllowed1" Display="Dynamic" Operator="NotEqual"></asp:CompareValidator>
            </div>
            <!--Lable and text input for Points Allwed also, Set require field and range validator-->
            <div>
                <asp:Label ID="pointAllowedLabel1" runat="server"><strong>Points Allowed:</strong></asp:Label>
                <asp:TextBox ID="txtPAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                <!--Range Validator for points alowed-->
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed1" ControlToValidate="txtPAllowed1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAllowed1" ControlToValidate="txtPAllowed1" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Allowed should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Takes number of Spectator inpt for Game 1-->
            <div>
                <asp:Label ID="spectatorLabel1" runat="server"><strong>Spectator:</strong></asp:Label>
                <asp:TextBox ID="txtSpec1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator1" ControlToValidate="txtSpec1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorSpectator1" ControlToValidate="txtSpec1" CssClass="text-danger" Display="Dynamic" MaximumValue="99999" MinimumValue="0" runat="server" Type="Integer" ErrorMessage="Spectator should be be greater than 0"></asp:RangeValidator>
            </div>
        </div>

        <!-- GAme Section 2-->
        <div class="jumbotron col-lg-3 well">
            <h3>Basketball         <i class="fa fa-life-ring"></i></h3>
            <!--Lable and text input for Results also, Set require field-->
            <div>
                <asp:Label ID="resultLabel2" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList2" CssClass="radio-inline" runat="server">
                    <asp:ListItem Value="1">Win</asp:ListItem>
                    <asp:ListItem Value="0">Loss</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult2" ControlToValidate="RadioButtonList2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Result"></asp:RequiredFieldValidator>
            </div>
            <!--Points Scored are Inputed HEre-->
            <div>
                <asp:Label ID="pointScoredLabel2" runat="server"><strong>Points Scored:</strong></asp:Label>
                <asp:TextBox ID="txtPScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored2" ControlToValidate="txtPScored2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorScored2" ControlToValidate="txtPScored2" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Compare Validator for Points Scored and Points ALlowed for Game 2-->
            <div>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Scored and Allowed Must be Different" CssClass="text-danger alert-danger" ControlToValidate="txtPScored2" ControlToCompare="txtPAllowed2" Display="Dynamic" Operator="NotEqual"></asp:CompareValidator>
            </div>
            <!--Points Allowed for the game 2-->
            <div>
                <asp:Label ID="pointsAllowedLabel2" runat="server"><strong>Points Allowed:</strong></asp:Label>
                <asp:TextBox ID="txtPAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed2" ControlToValidate="txtPAllowed2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAllowed2" ControlToValidate="txtPAllowed2" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Allowed should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Number spectaror input for game 2-->
            <div>
                <asp:Label ID="spectatorLabel2" runat="server"><strong>Spectator:</strong></asp:Label>
                <asp:TextBox ID="txtSpectator2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator2" ControlToValidate="txtSpectator2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorSpectator2" ControlToValidate="txtSpectator2" CssClass="text-danger" Display="Dynamic" MaximumValue="99999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectator should be greater than 0"></asp:RangeValidator>
            </div>
        </div>


        <!--Game Section3-->
        <div class="jumbotron col-lg-3 well">
            <h3>Hockey      <i class="fa fa-paper-plane"></i></h3>

            <!--Radio Button imput for Win or loos for game 2 goes here-->
            <div>
                <asp:Label ID="resultLabel3" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList3" CssClass="radio-inline" runat="server">
                    <asp:ListItem Value="1">Win</asp:ListItem>
                    <asp:ListItem Value="0">Loss</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult3" ControlToValidate="RadioButtonList3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Result"></asp:RequiredFieldValidator>

            </div>
            <!--Points Scored for game 3-->
            <div>
                <asp:Label ID="pointsScoredLabel3" runat="server"><strong>Points Scored:</strong></asp:Label>
                <asp:TextBox ID="txtPScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored3" ControlToValidate="txtPScored3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorScored3" ControlToValidate="txtPScored3" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Compare Validator for Game 2 so that values of scoed and allowed can not match-->
            <div>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Scored and Allowed Must be Different" CssClass="text-danger alert-danger" ControlToValidate="txtPScored3" ControlToCompare="txtPAllowed3" Display="Dynamic" Operator="NotEqual"></asp:CompareValidator>
            </div>
            <!--Lable and text input for Points Allowed also, Set require field and range validator-->
            <div>
                <asp:Label ID="pointsAllowedLabel3" runat="server"><strong>Points Allowed:</strong></asp:Label>
                <asp:TextBox ID="txtPAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed3" ControlToValidate="txtPAllowed3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAllowed3" ControlToValidate="txtPAllowed3" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Allowed should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Lable and text input for Spectator, Set require field and range validator-->
            <div>
                <asp:Label ID="spectatorLabel3" runat="server"><strong>Spectator:</strong></asp:Label>
                <asp:TextBox ID="txtSpectator3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator3" ControlToValidate="txtSpectator3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectators"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorSpectator3" ControlToValidate="txtSpectator3" CssClass="text-danger" Display="Dynamic" MaximumValue="99999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectator should be greater than 0"></asp:RangeValidator>
            </div>
        </div>

        <!--GAme Section 4-->
        <div class="jumbotron col-lg-3 well">
            <h3>Racing       <i class="fa fa-motorcycle"></i></h3>
            <!--Lable and text input for Result for Game 4 also, Set require field and range validator-->
            <div>
                <asp:Label ID="resultLabel4" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList4" CssClass="radio-inline" runat="server">
                    <asp:ListItem Value="1">Win</asp:ListItem>
                    <asp:ListItem Value="0">Loss</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorResult4" ControlToValidate="RadioButtonList4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Results"></asp:RequiredFieldValidator>
            </div>
            <!--Lable and text input for Points Scored also, Set require field and range validator-->
            <div>
                <asp:Label ID="pointsScoredLabel4" runat="server"><strong>Points Scored:</strong></asp:Label>
                <asp:TextBox ID="txtPScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored4" ControlToValidate="txtPScored4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorScored4" ControlToValidate="txtPScored4" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Compare validator for points scored and points allowed -->
            <div>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Scored and Allowed Must be Different" CssClass="text-danger alert-danger" ControlToValidate="txtPScored4" ControlToCompare="txtPAllowed4" Display="Dynamic" Operator="NotEqual"></asp:CompareValidator>
            </div>
            <!--Lable and text input for Points Allowed also, Set require field and range validator-->
            <div>

                <asp:Label ID="pointsAllowedLabel4" runat="server"><strong>Points Allowed:</strong></asp:Label>
                <asp:TextBox ID="txtPAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed4" ControlToValidate="txtPAllowed4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAllowed4" ControlToValidate="txtPAllowed4" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Allowes should be greater than 0"></asp:RangeValidator>
            </div>
            <!--Lable and text input for Spectator, Set require field and range validator-->
            <div>
                <asp:Label ID="spectatorLabel4" runat="server"><strong>Spectator:</strong></asp:Label>
                <asp:TextBox ID="txtSpectator4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <!--Range and Requeired VAlidator-->
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator4" ControlToValidate="txtSpectator4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectator"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorSpectator4" ControlToValidate="txtSpectator4" CssClass="text-danger" Display="Dynamic" MaximumValue="99999" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectator should be greater than 0"></asp:RangeValidator>
            </div>
        </div>

    </div>
    <!--Row Ends HEre-->
    <!-- Container Ends HEre -->
    <div class="container">
        <div class="row">
            <div class="button2 text-center">
                <asp:Button ID="Button1" runat="server" Text="Summary" CssClass="btn-lg btn-primary" OnClick="btnSubmit_Click" />
                <!--Addeed Addational button as a Clear Button and it s Functanality-->

                <asp:Button ID="Button2" runat="server" Text="Clear Button" CssClass="btn-lg btn-warning" OnClick="btnClear_Click" />

            </div>
        </div>
    </div>
    <!--Div for Button-->
    <!--Container for Results -->
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
    <!--Results Container Ends Here-->



</asp:Content>
