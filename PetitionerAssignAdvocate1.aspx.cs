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

public partial class PetitionerAssignAdvocate1 : System.Web.UI.Page
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
        //Session["petuname"] = "raju123";
       // Session["petuname"] = "chikku123";
        petuname = Session["petuname"].ToString();
      //  Label1.Text = Session["petuname"].ToString();
        if (!IsPostBack)
        {


            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
            DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select username from advocate where status=1");
            while (ob.dr.Read())
            {
                DropDownList6.Items.Add(ob.dr[0].ToString());

            }
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList7.Items.Insert(1, new ListItem("PETITIONER", "1"));
            DropDownList7.Items.Insert(2, new ListItem("RESPONDENT", "2"));

        }
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select caseid from casedetails where (petuname='" + petuname + "' and (status=0  or status=1)) or  (respuname='" + petuname + "' and (status=0  or status=1))");
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

    protected void Button5_Click(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select uploaddetails from casedetails where caseid=" + DropDownList4.SelectedItem.ToString() + "");
        if (ob.dr.Read())
        {
            pp = ob.dr[0].ToString();
        }
        DownloadFile(pp, true);
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList7.SelectedItem.ToString() == "PETITIONER")
        {
            string s2 = "update casedetails set petadvuname='" + DropDownList6.SelectedItem.ToString() + "' where caseid=" + DropDownList4.SelectedItem.ToString() + "";
            ob1.exec(s2);
        }
        else if (DropDownList7.SelectedItem.ToString() == "RESPONDENT")
        {
            string s2 = "update casedetails set resadvuname='" + DropDownList6.SelectedItem.ToString() + "' where caseid=" + DropDownList4.SelectedItem.ToString() + "";
            ob1.exec(s2);
        }
        else
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please select Usertype";
        }
        int stat = 0;
        ob.dr = ob.ret_dr("select status from casedetails where caseid=" + DropDownList4.SelectedItem.ToString() + "");
        if (ob.dr.Read())
        {
            stat = Convert.ToInt32(ob.dr[0].ToString());
        }
        stat = stat + 1;

        string s1 = "update casedetails set status=" + stat + " where caseid=" + DropDownList4.SelectedItem.ToString() + "";
        ob1.exec(s1);
        Label11.Visible = true;
        Label11.ForeColor = System.Drawing.Color.Green;
        Label11.Text = "Advocate Request send";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}