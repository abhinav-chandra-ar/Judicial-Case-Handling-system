using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class HomePage : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    DbConnection ob2 = new DbConnection();

    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["uname"] = TextBox1.Text;
        Session["pwd"] = TextBox2.Text;
        if (TextBox2.Text == "" || TextBox1.Text == "")
        {
            Label4.Visible = true;
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Please Enter all fields correctly!";
        }
        else
        {
            ob.dr = ob.ret_dr("select * from Login where username='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'");
            if (ob.dr.Read())
            {
                if (ob.dr[3].ToString() == '1'.ToString())
                {
                    Session["petuname"] = TextBox1.Text;

                    Response.Redirect("PetitionerHomePage1.aspx", true);
                }
                else if (ob.dr[3].ToString() == '2'.ToString())
                {
                    Session["aduname"] = TextBox1.Text;
                    // Session["shopid"] = ob.dr[0].ToString();
                    Response.Redirect("AdvocateHomePage1.aspx", true);

                }
                else if (ob.dr[3].ToString() == '3'.ToString())
                {
                    Session["puname"] = TextBox1.Text;
                    //  Session["uid"] = TextBox1.Text;
                    Response.Redirect("PoliceHomePage1.aspx", true);

                }
                else if (ob.dr[3].ToString() == '4'.ToString())
                {
                    //  Session["uid"] = TextBox1.Text;
                    Response.Redirect("AdminHome1.aspx", true);

                }
                else if (ob.dr[3].ToString() == '5'.ToString())
                {
                    //  Session["uid"] = TextBox1.Text;
                    Response.Redirect("CourtOfficerViewCaseStatus.aspx", true);

                }
            }
            else
            {
                Response.Write("<script type = 'text/javascript'>alert('Invalid User');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}