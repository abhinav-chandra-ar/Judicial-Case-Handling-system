using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class PoliceCaseStatus1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
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
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        BindData(TextBox3.Text, "casedetails");
        BindData1(TextBox3.Text, "evidence");
        BindData2(TextBox3.Text, "hearing");
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

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        ob.dr = ob.ret_dr("select evupload from evidence where evid=" + id + "");
        if (ob.dr.Read())
        {
            pp = ob.dr[0].ToString();
        }
        DownloadFile1(pp, true);
    }

    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void BindData(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from casedetails where caseid=" + user + "";

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
    protected void BindData1(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from evidence where caseid=" + user + "";

        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
    protected void BindData2(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from hearing where caseid=" + user + "";

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
    public void DownloadFile1(string fname, bool forceDownload)
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
    public void path1(string s)
    {
        DataSet ds = new DataSet();
        ds = docpath1(s);
        if (ds != null)
        {
            fpath = ds.Tables[0].Rows[0][0].ToString();
        }
    }
    public DataSet docpath1(string uid)
    {
        DataSet ds = new DataSet();
        try
        {

            str1 = "select evupload from evidence where evid=" + uid + "";
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