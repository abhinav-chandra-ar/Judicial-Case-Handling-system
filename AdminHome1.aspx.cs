using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome1 : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select count(*) from casedetails");
        if (ob.dr.Read())
        {
            Label1.Text = (Convert.ToInt32(ob.dr[0]) * 75).ToString();
        }
        ob.dr = ob.ret_dr("select count(*) from advocate");
        if (ob.dr.Read())
        {
            Label4.Text = (Convert.ToInt32(ob.dr[0]) * 75).ToString();
        }
        ob.dr = ob.ret_dr("select count(*) from petition");
        if (ob.dr.Read())
        {
            Label2.Text = (Convert.ToInt32(ob.dr[0]) * 75).ToString();
        }
        ob.dr = ob.ret_dr("select count(*) from hearing");
        if (ob.dr.Read())
        {
            Label3.Text = (Convert.ToInt32(ob.dr[0]) * 75).ToString();
        }
    }
}