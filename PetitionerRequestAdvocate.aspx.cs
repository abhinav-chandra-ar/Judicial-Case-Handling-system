using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class PetitionerRequestAdvocate : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    DbConnection ob2 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", pstation = "", petuname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["petuname"] = "raju123";
        Label1.Text = Session["petuname"].ToString();
        petuname = Session["petuname"].ToString();
        if (!IsPostBack)
        {
            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select Petitionid from Petition where status=0 and Puname='"+petuname+"'");
            while (ob.dr.Read())
            {
                DropDownList4.Items.Add(ob.dr[0].ToString());

            }
            DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select username from advocate where status=1");
            
            while (ob.dr.Read())
            {
                DropDownList6.Items.Add(ob.dr[0].ToString());

            }
           

        }
       

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from Petition where Petitionid=" + DropDownList4.SelectedItem.ToString() + "");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[0].ToString();
            TextBox17.Text = ob.dr[1].ToString();
            TextBox2.Text = ob.dr[2].ToString();
           
            TextBox14.Text = ob.dr[4].ToString();
            TextBox7.Text = ob.dr[5].ToString();
            TextBox6.Text = ob.dr[6].ToString();
          



        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "No Petition available in this Police station ";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string s1 = "update Petition set status=1, aduname='"+DropDownList6.SelectedItem.ToString()+"' where Petitionid=" + DropDownList4.SelectedItem.ToString() + "";
        ob1.exec(s1);
        Label11.Visible = true;
        Label11.ForeColor = System.Drawing.Color.Green;
        Label11.Text = "Request Send to Advocate Successfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}