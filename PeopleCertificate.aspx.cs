using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PeopleCertificate : System.Web.UI.Page
{
    #region CONSTANT
    public static string d;
    public static int h, m;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            possession();
        }
    }
    
    public void possession()
    {
        
        
            //m = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            Pid.Text = Session["cno"].ToString();
            Prid.Text = Session["cname"].ToString();
            Pname.Text = Session["petname"].ToString();
            pdis0.Text = Session["resname"].ToString();
            padd.Text = Session["adname"].ToString();
            padd0.Text = Session["petname"].ToString();
            padd1.Text = Session["adname"].ToString();
            padd2.Text = Session["adname"].ToString();
            padd3.Text = Session["adenroll"].ToString();
            padd4.Text = Session["admobile"].ToString();
            ppost0.Text = Session["date"].ToString();
            imgEmp0.ImageUrl ="asig/104.jpg";
           // imgEmp.ImageUrl = "../dimage/401.jpg";
         
            
            
       



    }
   
   
    

    protected void Button6_Click(object sender, EventArgs e)
    {
       Response.Redirect("Homepage.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        //Response.Redirect("PeopleHome.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        //Response.Redirect("PeopleHome.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
       // Response.Redirect("PeopleHome.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
}