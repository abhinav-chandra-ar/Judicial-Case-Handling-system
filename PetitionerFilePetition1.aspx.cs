using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PetitionerFilePetition1 : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document411 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "", document211 = "", document311 = "";
  
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session["petuname"] = "raju123";
        TextBox1.Text = getid().ToString();
        TextBox2.Text = DateTime.Now.ToString();
        // Session["huname"] = "cosmo123";
       // Label1.Text = Session["petuname"].ToString();
        TextBox8.Text = Session["petuname"].ToString();
        if (!IsPostBack)
        {
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(1, new ListItem("ARBITRATION PETITION", "1"));
            DropDownList2.Items.Insert(2, new ListItem("CONTEMPT PETITION (CIVIL)", "2"));
            DropDownList2.Items.Insert(3, new ListItem("CONTEMPT PETITION (CRIMINAL)", "3"));
            DropDownList2.Items.Insert(4, new ListItem("ORIGINAL SUIT", "4"));
            DropDownList2.Items.Insert(5, new ListItem("WRIT PETITION", "5"));
            DropDownList2.Items.Insert(6, new ListItem("CURATIVE PETITION", "6"));
            DropDownList2.Items.Insert(7, new ListItem("ELECTION PETITION", "7"));

            DropDownList3.Items.Insert(0, new ListItem("SELECT", "0"));
            getgrid();

        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(Petitionid),400)+1 from Petition");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    public void getgrid()
    {
        ob.dr = ob.ret_dr("select pstation from police where status=1");
        while (ob.dr.Read())
        {
            DropDownList3.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document211 = Server.MapPath("~/petition/" + "/");
            if (!Directory.Exists(document211))
                Directory.CreateDirectory(document211);
            if (FileUpload1.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(document211 + TextBox1.Text + extension);
                    document311 = TextBox1.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {

        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {


            document411 = "petition/" + document311;

            if (!ob.dr.Read())
            {
                string user = Session["petuname"].ToString();
                string str11 = "insert into Petition values(" + TextBox1.Text + ",'" + TextBox8.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox5.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + document411 + "',0,0)";
                ob.exec(str11);

                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Data stored successfully !";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox3.Text = "";


                TextBox9.Text = "";

                TextBox2.Text = DateTime.Now.ToString();

                TextBox1.Text = getid().ToString();
                Label11.Visible = true;
                Label11.Text = "Petition Uploaded Successfully";


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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}