using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

public partial class AdvocateViewHearing1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", aduname = "", idetails = "";
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
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["aduname"] = "mahesh123";
        aduname = Session["aduname"].ToString();
       // Label1.Text = Session["aduname"].ToString();
    }

    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {
      //  BindData2(TextBox3.Text, "hearing");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BindData2(TextBox3.Text, "hearing");
    }
}