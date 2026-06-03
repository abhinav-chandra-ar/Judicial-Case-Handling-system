using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PetitionerPetitionStatus1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string stat = "";
        ob.dr = ob.ret_dr("select status from Petition where Petitionid=" + TextBox3.Text + "");
        if (ob.dr.Read())
        {
            stat = ob.dr[0].ToString();
            if (stat == "0")
            {
                Label11.Visible = true;
                Label11.Text = "Petition Successfully Uploaded, Waiting for Approval from Court";
            }
            else if (stat == "1")
            {
                Label11.Visible = true;
                //Label11.Text = "Petitioner successfully assigned Advocate";
                Label11.Text = "Court approved petition";
            }
            else if (stat == "2")
            {
                Label11.Visible = true;
                Label11.Text = "Petition Accepted ";
            }
            else if (stat == "3")
            {
                Label11.Visible = true;
                Label11.Text = "Petition Solved and Closed in Police Station";
            }
            else if (stat == "4")
            {
                Label11.Visible = true;
                Label11.Text = "Petition Request by Police Station for Registration as Case";
            }
            else if (stat == "5")
            {
                Label11.Visible = true;
                //Label11.Text = "Petition Registerd As Case by Court Officer You can download e-Vakalathu";
                Label11.Text = "Petition Registerd As Case by court";
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Petition Not Found";
            }
        }
    }
}


 