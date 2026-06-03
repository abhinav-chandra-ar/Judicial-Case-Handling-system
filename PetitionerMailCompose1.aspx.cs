using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PetitionerMailCompose1 : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document411 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "", document211 = "", document311 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox9.Text = getid().ToString();
        TextBox12.Text = DateTime.Now.ToString();
        // Label1.Text = Session["petuname"].ToString();
        //Session["petuname"] = "raju123";
        //Label1.Text = Session["petuname"].ToString();
    }

    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document211 = Server.MapPath("~/amail/" + "/");
            if (!Directory.Exists(document211))
                Directory.CreateDirectory(document211);
            if (FileUpload1.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(document211 + TextBox9.Text + extension);
                    document311 = TextBox9.Text + extension;
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


            document411 = "amail/" + document311;

            if (!ob.dr.Read())
            {
                string user = Session["petuname"].ToString();
                string str11 = "insert into maildetails values(" + TextBox9.Text + ",'" + TextBox12.Text + "','" + user + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + document411 + "','" + TextBox3.Text + "',0)";
                ob.exec(str11);

                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Data stored successfully !";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";


                TextBox9.Text = "";

                TextBox12.Text = DateTime.Now.ToString();

                TextBox9.Text = getid().ToString();


            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Failure Transcation!";
            }
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(mid),600)+1 from maildetails");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
}