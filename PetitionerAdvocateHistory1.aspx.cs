using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

public partial class PetitionerAdvocateHistory1 : System.Web.UI.Page
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
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select distinct adtype from advocate where status=1");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());

        }
    }
    public void getgrid1()
    {
        ob.dr = ob.ret_dr("select username from advocate where status=1");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["petuname"] = "raju123";
        //Label1.Text = Session["petuname"].ToString();
        if (!IsPostBack)
        {
            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid1();
        }
    }
    protected void BindData(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from casedetails where petadvuname='" + user + "'";

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
    protected void cBindData(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from casedetails where casetype='" + user + "'";

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
        string cmdstr = "select * from advocate where username='" + user + "'";

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
    protected void cBindData1(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from advocate where adtype='" + user + "'";

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
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData(DropDownList4.SelectedItem.ToString(), "casedetails");
        BindData1(DropDownList4.SelectedItem.ToString(), "advocate");
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cBindData(DropDownList1.SelectedItem.ToString(), "casedetails");
        cBindData1(DropDownList1.SelectedItem.ToString(), "advocate");
    }
}