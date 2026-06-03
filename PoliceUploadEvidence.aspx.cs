using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PoliceUploadEvidence : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document411 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "", document211 = "", document311 = "", puname = "";
    public static string evid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["puname"] = "anoop123";

        TextBox6.Text = DateTime.Now.ToShortDateString();
        puname = Session["puname"].ToString();
        // Session["huname"] = "cosmo123";
        //  Label1.Text = aduname;
        TextBox16.Text = Session["puname"].ToString();
        if (!IsPostBack)
        {
            DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();
        }
        evid = getid().ToString();
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(evid),800)+1 from evidence");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select distinct caseid from hearing where cstatus='Active'");
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
            TextBox11.Text = ob.dr[3].ToString();
            TextBox15.Text = ob.dr[11].ToString();



        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "No Petition available in this Police station ";
        }
    }

    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document211 = Server.MapPath("~/evidence/" + "/");
            if (!Directory.Exists(document211))
                Directory.CreateDirectory(document211);
            if (FileUpload1.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(document211 + evid + extension);
                    document311 = evid + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox14.Text == "" || TextBox4.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {


            document411 = "evidence/" + document311;

            if (!ob.dr.Read())
            {

                string str11 = "insert into evidence values(" + evid + "," + TextBox1.Text + ",'" + TextBox11.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox4.Text + "','" + TextBox14.Text + "','" + document411 + "','" + TextBox6.Text + "',0)";
                ob.exec(str11);

                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Data stored successfully !";
                TextBox1.Text = "";



                TextBox14.Text = "";

                TextBox6.Text = DateTime.Now.ToString();

                evid = getid().ToString();
                Label11.Visible = true;
                Label11.Text = "Evidence Uploaded Successfully";


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