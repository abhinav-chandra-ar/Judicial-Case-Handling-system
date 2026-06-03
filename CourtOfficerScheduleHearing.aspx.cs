using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourtOfficerScheduleHearing : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    DataSet ds = new DataSet();
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList6.Items.Insert(1, new ListItem("Active", "1"));
            DropDownList6.Items.Insert(2, new ListItem("Closed", "2"));
            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
        }
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select hid from hearing where status=0 and cstatus='Active'");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

        }
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
        BindData(TextBox3.Text, "hearing");
    }
    protected void BindData(string user, string tvalue)
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();


        PagedDataSource pgd = new PagedDataSource();
        // string cmdstr = "select * from "+tvalue+" where hpuname='" +user + "' and huname='"+Session["huname"].ToString()+"'";
        string cmdstr = "select * from hearing where caseid=" + user + " and cstatus='Active'";

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
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from hearing where hid='" + DropDownList4.SelectedItem.ToString() + "' and cstatus='Active'");
        if (ob.dr.Read())
        {
            TextBox17.Text = ob.dr[0].ToString();
            TextBox1.Text = ob.dr[1].ToString();
            TextBox11.Text = ob.dr[2].ToString();
            TextBox16.Text = ob.dr[3].ToString();
            TextBox18.Text = ob.dr[4].ToString();
            TextBox15.Text = ob.dr[5].ToString();
            TextBox19.Text = ob.dr[6].ToString();
            TextBox4.Text = ob.dr[7].ToString();
            TextBox6.Text = ob.dr[8].ToString();
            TextBox14.Text = ob.dr[9].ToString();
            TextBox22.Text = ob.dr[11].ToString();




        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "No Petition available in this Police station ";
        }
    }

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList6.SelectedItem.ToString() == "Active")
        {
            TextBox22.Text = "Active";
        }
        if (DropDownList6.SelectedItem.ToString() == "Closed")
        {
            TextBox22.Text = "Closed";
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(hid),700)+1 from hearing");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int stat = 1;
        string s1 = "update hearing set status=" + stat + ", cstatus='" + TextBox22.Text + "', details='" + TextBox14.Text + "' where hid=" + DropDownList4.SelectedItem.ToString() + "";
        ob1.exec(s1);
        Label11.Visible = true;
        Label11.ForeColor = System.Drawing.Color.Green;
        Label11.Text = "Admin Update Case";
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string hid = getid().ToString();
        string cstatus = "Active";
        string str11 = "insert into hearing values(" + hid + "," + TextBox1.Text + ",'" + TextBox11.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox15.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "',0,0,'" + cstatus + "')";
        ob.exec(str11);
        Label11.Visible = true;

        Label11.Text = " Hearing Scheduled Successfully";
    }

    protected void DataList(object sender, EventArgs e)
    {

    }
}