using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class CourtOfficerApprovePetition : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", pstation = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();

        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from Petition where Petitionid='" + DropDownList4.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[0].ToString();
            TextBox2.Text = ob.dr[1].ToString();
            TextBox8.Text = ob.dr[2].ToString();
            TextBox11.Text = ob.dr[3].ToString();
            TextBox5.Text = ob.dr[4].ToString();
            TextBox9.Text = ob.dr[5].ToString();
            TextBox3.Text = ob.dr[6].ToString();
            TextBox10.Text = ob.dr[7].ToString();


        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select documents from Petition where Petitionid='" + DropDownList4.SelectedItem.ToString() + "'");
        if (ob.dr.Read())
        {
            pp = ob.dr[0].ToString();
        }
        DownloadFile(pp, true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sss = "update Petition set status=1 where Petitionid='" + DropDownList4.SelectedItem.ToString() + "'";
        ob1.exec(sss);
        Label11.Visible = true;
        Label11.Text = "Petition Approved";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sss = "update Petition set status=2 where Petitionid='" + DropDownList4.SelectedItem.ToString() + "'";
        ob1.exec(sss);
        Label11.Visible = true;
        Label11.Text = "Petition rejected";
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select Petitionid from Petition where status=0");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

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

            str1 = "select documents from Petition where Petitionid=" + uid + "";
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
}