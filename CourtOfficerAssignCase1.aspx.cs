using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;
using System.IO;

public partial class CourtOfficerAssignCase1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    DbConnection ob2 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", pstation = "", aduname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Label1.Text = Session["puname"].ToString();
        if (!IsPostBack)
        {


            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
            div1.Visible = false;


        }
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select caseid from casedetails where status=0");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

        }
    }
    public void getgrid1()
    {
        ob.dr = ob.ret_dr("select Petitionid from Petition where status=");
        //ob.dr = ob.ret_dr("select Petitionid from Petition where status=5");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from casedetails where caseid='" + DropDownList4.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[0].ToString();
            TextBox17.Text = ob.dr[1].ToString();
            TextBox4.Text = ob.dr[2].ToString();
            TextBox11.Text = ob.dr[3].ToString();
            TextBox10.Text = ob.dr[4].ToString();
            TextBox2.Text = ob.dr[5].ToString();
            TextBox9.Text = ob.dr[6].ToString();
            TextBox14.Text = ob.dr[7].ToString();
            TextBox7.Text = ob.dr[8].ToString();
            TextBox6.Text = ob.dr[9].ToString();
            TextBox8.Text = ob.dr[10].ToString();
            TextBox16.Text = ob.dr[11].ToString();
            TextBox15.Text = ob.dr[12].ToString();
            TextBox18.Text = ob.dr[13].ToString();
            //string script = "alert( ob.dr[13].ToString())";
            TextBox19.Text = ob.dr[14].ToString();


        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "No Petition available in this Police station ";
        }
    }
    public void DownloadFile(string fname, bool forceDownload)
    {
        try
        {
            string path = Server.MapPath(fname);
            string name = Path.GetFileName(path);
            string ext = Path.GetExtension(path);
            string type = "";
            switch (ext)
            {
                case ".htm":
                case ".html":
                    type = "text/HTML";
                    break;

                case ".txt":
                    type = "text/plain";
                    break;

                case ".doc":
                case ".docx":
                case ".rtf":
                    type = "Application/msword";
                    break;
                case ".pdf":
                    type = "Application/pdf";
                    break;
            }

            if (forceDownload)
            {
                Response.AppendHeader("content-disposition", "attachment; fileName=" + name);
            }

            if (type != "")
                Response.ContentType = type;

            name = path;
            Response.WriteFile(name);
            Response.End();
        }
        catch (Exception ex)
        {

        }
    }
    public void path(string s)
    {
        DataSet ds = new DataSet();
        ds = docpath(s);
        if (ds != null)
        {
            fpath = ds.Tables[0].Rows[0][0].ToString();
        }
    }
    public DataSet docpath(string uid)
    {
        DataSet ds = new DataSet();
        try
        {

            str1 = "select uploaddetails from casedetails where caseid=" + uid + "";
            ds = ob1.ret_ds(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        div1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        div1.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select uploaddetails from casedetails where caseid=" + DropDownList4.SelectedItem.ToString() + "");
        if (ob.dr.Read())
        {
            pp = ob.dr[0].ToString();
        }
        DownloadFile(pp, true);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox19.Text == "0")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Add Advocate";
        }
        else
        {
            int stat = 1;
            string s1 = "update casedetails set status=" + stat + ", resadvuname='" + TextBox19.Text + "',casedate='" + TextBox2.Text + "' where caseid=" + DropDownList4.SelectedItem.ToString() + "";
            ob1.exec(s1);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Admin Approve Case";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int stat = 2;
        string s1 = "update casedetails set status=" + stat + " where caseid=" + DropDownList4.SelectedItem.ToString() + "";
        ob1.exec(s1);
        Label11.Visible = true;
        Label11.ForeColor = System.Drawing.Color.Red;
        Label11.Text = "Admin Reject Case";
    }
}