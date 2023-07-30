using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Manager_Mastermanager : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_name.Text = Session["firstname"].ToString();

    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Manager/release.aspx");
    }
}
