using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

public partial class PoliceAddCase1 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "", pstation = "", petpath = "", petadv = "";
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document411 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "", document211 = "", document311 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["puname"] = "anoop123";
        TextBox1.Text = getid();
       // Label1.Text = Session["puname"].ToString();
        if (!IsPostBack)
        {
            ob.dr = ob.ret_dr("select pstation from Police where username='" + Session["puname"].ToString() + "' and status=1");
            if (ob.dr.Read())
            {
                pstation = ob.dr[0].ToString();
            }

            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
            TextBox10.Text = pstation.ToString();
            TextBox8.Text = Session["puname"].ToString();
            TextBox9.Text = DateTime.Now.ToShortDateString();
            TextBox11.Text = TextBox1.Text + "/" + DateTime.Now.DayOfYear.ToString() + "/" + DateTime.Now.Year.ToString();
            DropDownList5.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList5.Items.Insert(1, new ListItem("ARBITRATION PETITION", "1"));
            DropDownList5.Items.Insert(2, new ListItem("CONTEMPT PETITION (CIVIL)", "2"));
            DropDownList5.Items.Insert(3, new ListItem("CONTEMPT PETITION (CRIMINAL)", "3"));
            DropDownList5.Items.Insert(4, new ListItem("ORIGINAL SUIT", "4"));
            DropDownList5.Items.Insert(5, new ListItem("WRIT PETITION", "5"));
            DropDownList5.Items.Insert(6, new ListItem("CURATIVE PETITION", "6"));
            DropDownList5.Items.Insert(7, new ListItem("ELECTION PETITION", "7"));
            //  DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList3.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select username from Petitioner where status=1");
            while (ob.dr.Read())
            {
                //   DropDownList2.Items.Add( ob.dr[0].ToString());
                DropDownList3.Items.Add(ob.dr[0].ToString());
            }

        }
    }
    public void getgrid()
    {
        //ob.dr = ob.ret_dr("select Petitionid from Petition where status=1");
        ob.dr = ob.ret_dr("select Petitionid from Petition where status=4");
        while (ob.dr.Read())
        {
            DropDownList4.Items.Add(ob.dr[0].ToString());

        }
    }
    public string getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(caseid),500)+1 from casedetails");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c.ToString();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from Petition where Petitionid="+DropDownList4.SelectedItem.ToString()+"");
        if (ob.dr.Read())
        {
            TextBox7.Text = ob.dr[5].ToString();
            TextBox6.Text = ob.dr[6].ToString();
            petpath = ob.dr[8].ToString();
            TextBox15.Text = ob.dr[1].ToString();
            petadv = ob.dr[8].ToString();
            TextBox14.Text = ob.dr[4].ToString();
            TextBox10.Text = ob.dr[7].ToString();
            //  TextBox9.Text=ob.dr[2].ToString();
            TextBox2.Text = ob.dr[2].ToString();

        }
        else
        {
            Label11.Visible = true;
            // Label11.Text = "No Petition available in this Police station ";
        }
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox9.Text == "" || TextBox14.Text == "" || TextBox8.Text == "" || TextBox7.Text == "" || TextBox6.Text == "" || DropDownList3.SelectedItem.ToString() == "SELECT")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {


            // document411 = "case/" + document311;

            if (!ob.dr.Read())
            {
                string user = Session["puname"].ToString();
                string str11 = "insert into casedetails values(" + TextBox1.Text + ",'" + DropDownList5.SelectedItem.ToString() + "','" + TextBox4.Text + "','" + TextBox11.Text + "','" + TextBox10.Text + "','" + TextBox9.Text + "','" + TextBox9.Text + "','" + TextBox14.Text + "','" + TextBox7.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox15.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + petadv + "',0,'" + petpath + "',0," + DropDownList4.SelectedItem.ToString() + ")";
                ob.exec(str11);

                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Data stored successfully !";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";





                TextBox9.Text = DateTime.Now.ToShortDateString();

                TextBox1.Text = getid().ToString();
                Label11.Visible = true;
                Label11.Text = "Case Uploaded Successfully";

                if (DropDownList4.SelectedItem.ToString() == "SELECT")
                {
                }
                else
                {
                    string sss = "update Petition set status=5 where Petitionid=" + DropDownList4.SelectedItem.ToString() + "";
                    ob1.exec(sss);
                }


            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Failure Transcation!";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}