using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PetitionerEvakalathu1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", aduname = "", puname = "", runame = "", cuname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Session["petuname"] = "raju123";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from casedetails where petid=" + TextBox3.Text + "");
        if (ob.dr.Read())
        {
            Session["cno"] = ob.dr[3].ToString();
            Session["cname"] = "District Court";
            Session["date"] = DateTime.Now.ToShortDateString();
            aduname = ob.dr[13].ToString();
            puname = ob.dr[11].ToString();
            runame = ob.dr[12].ToString();
            cuname = ob.dr[10].ToString();



        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Petition ID Not Matching');", true);
        }
        ob.dr = ob.ret_dr("select * from advocate where username='" + aduname + "'");
        if (ob.dr.Read())
        {
            Session["adname"] = ob.dr[2].ToString();
            Session["adenroll"] = ob.dr[1].ToString();
            Session["admobile"] = ob.dr[6].ToString();


        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Petition ID Not Matching');", true);
        }
        ob.dr = ob.ret_dr("select * from Petitioner where username='" + puname + "'");
        if (ob.dr.Read())
        {
            Session["petname"] = ob.dr[2].ToString();



        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Petition Username Not Matching');", true);
        }
        ob.dr = ob.ret_dr("select * from Petitioner where username='" + runame + "'");
        if (ob.dr.Read())
        {
            Session["resname"] = ob.dr[2].ToString();



        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Petition ID Not Matching');", true);
        }

        Response.Redirect("PeopleCertificate.aspx");

        //  string str = "select * from design";
    }
}