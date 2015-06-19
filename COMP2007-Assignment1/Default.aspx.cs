using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            summaryContainer.Visible = false;
            //if submit clicked the shows summary container
            if (IsPostBack)
            {
                summaryContainer.Visible = true;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           

            int gameWon = 0, gameLost = 0;

            //checks if the winning radio button is selected
            if (RadioButtonList1.SelectedValue == "1")
            {
                //increment to win variable
                gameWon++;
            }

            else
            {
                //decrement to loss vaiable
                gameLost++;
            }
            //checks the results for game 2
            if(RadioButtonList2.SelectedValue=="1")
            {
                gameWon++;
            }
            else
            {
                gameLost++;
            }
            //checks the results for game 3
            if(RadioButtonList3.SelectedValue=="1")
            {
                gameWon++;
            }
            else
            {
                gameLost++;
            }
            //checks the results for game 4
            if (RadioButtonList4.SelectedValue == "1")
            {
                gameWon++;
            }
            else
            {
                gameLost++;
            }

            //Display total number of games won.
            lblGameWon.Text = gameWon.ToString();

            //Display total number of game Lost.
            lblGameLost.Text = gameLost.ToString();

            //calculates winning PErcentage
            double winningPer = gameWon / 4.0  * 100;
            //prints winning percentage in label
            lblWinningP.Text = winningPer.ToString();

            //calculaates total points score
            int totalPoints = int.Parse(txtPScored1.Text) + int.Parse(txtPScored2.Text) + int.Parse(txtPScored3.Text) + int.Parse(txtPScored4.Text);
            //prints points scored
            lblTotalPointS.Text = totalPoints.ToString();

            //calculates total points allowed
            int totalAllowed = int.Parse(txtPAllowed1.Text) + int.Parse(txtPAllowed2.Text) + int.Parse(txtPAllowed3.Text) + int.Parse(txtPAllowed4.Text);
            //prints points allowed in label
            lblTotalPointsA.Text = totalAllowed.ToString();

            //calculates total number of spectator
            int totalSpectator = int.Parse(txtSpec1.Text) + int.Parse(txtSpectator2.Text) + int.Parse(txtSpectator3.Text) + int.Parse(txtSpectator4.Text);
            //prints total number of sptector in label
            lblTotalS.Text = totalSpectator.ToString();

            //calculates total point difference
            int differenceOfPoints = totalPoints - totalAllowed;
            //prints point difference
            lblDifferentP.Text = differenceOfPoints.ToString();

            //Calculate Average Spectators.
            int averageSpectator = totalSpectator / 4;
            //Display Average Spectators.
            lblAverageS.Text = averageSpectator.ToString();


        }
    }
}