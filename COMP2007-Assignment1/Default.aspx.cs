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

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int gameWon = 0, gameLost = 0;

            if (RadioButtonList1.SelectedValue == "1")
            {
                gameWon++;
            }

            else
            {
                gameLost++;
            }
            if(RadioButtonList2.SelectedValue=="1")
            {
                gameWon++;
            }
            else
            {
                gameLost++;
            }

            if(RadioButtonList3.SelectedValue=="1")
            {
                gameWon++;
            }
            else
            {
                gameLost++;
            }
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

            int totalPoints = int.Parse(txtPScored1.Text) + int.Parse(txtPScored2.Text) + int.Parse(txtPScored3.Text) + int.Parse(txtPScored4.Text);

            lblTotalPointS.Text = totalPoints.ToString();

            int totalAllowed = int.Parse(txtPAllowed1.Text) + int.Parse(txtPAllowed2.Text) + int.Parse(txtPAllowed3.Text) + int.Parse(txtPAllowed4.Text);

            lblTotalPointsA.Text = totalAllowed.ToString();

            int totalSpectator = int.Parse(txtSpec1.Text) + int.Parse(txtSpectator2.Text) + int.Parse(txtSpectator3.Text) + int.Parse(txtSpectator4.Text);

            lblTotalS.Text = totalSpectator.ToString();

            int differenceOfPoints = totalPoints - totalAllowed;

            lblDifferentP.Text = differenceOfPoints.ToString();

            //Calculate Average Spectators.
            int averageSpectator = totalSpectator / 4;

            //Display Average Spectators.
            lblAverageS.Text = averageSpectator.ToString();


        }
    }
}