using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class CourtOfficerSchedule1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = DateTime.Now.ToShortDateString();
    }
    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }
    int pg = 0;
    protected void Button1_Click(object sender, EventArgs e)
    {
        BindData2(TextBox3.Text, "hearing");
    }
    protected void BindData2(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from hearing where heardate='" + user + "'";

        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList3.DataSource = pgd;
        DataList3.DataBind();
    }
    protected void BindData(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from casedetails where caseid=" + user + " and status=3";

        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList2.DataSource = pgd;
        DataList2.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindData(TextBox4.Text, "casedetails");
    }

    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = DataList2.DataKeys[DataList2.SelectedIndex].ToString();
        ob.dr = ob.ret_dr("select uploaddetails from casedetails where caseid=" + id + "");
        if (ob.dr.Read())
        {
            pp = ob.dr[0].ToString();
        }
        DownloadFile(pp, true);
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
}