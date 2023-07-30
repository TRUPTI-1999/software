using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Emp_Delsht : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["firstname"].ToString();
        string pid = Request.QueryString["deleid"].ToString();

        string sql = "delete from timesheet where timesheetid='" + pid + "'";

        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        Response.Redirect("~/Emp/Modify.aspx");
        //Response.Write("deletted");
    }
}
