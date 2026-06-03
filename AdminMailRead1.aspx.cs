using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AdminMailRead1 : System.Web.UI.Page
{
    public static string firstname = "";
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", pp1 = "";
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
    protected void BindData(string ss1)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from maildetails where mid=" + ss1 + "";
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
    protected void Page_Load(object sender, EventArgs e)
    {
        firstname = Request.QueryString["mid"];
        //  Label1.Text = firstname.ToString();
        if (!IsPostBack)
        {
            BindData(firstname);
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss = DataList1.DataKeys[DataList1.SelectedIndex].ToString(); ;
        ob.dr = ob.ret_dr("select attachment from maildetails where mid=" + ss + "");
        if (ob.dr.Read())
        {
            pp1 = ob.dr[0].ToString();
        }

        // path(ss);
        DownloadFile(pp1, true);

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